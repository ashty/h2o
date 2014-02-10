// Generated by CoffeeScript 1.5.0
(function() {
  var module;

  module = angular.module('h2o.directives.inspect');

  module.directive("inspectTable", function($parse) {
    return {
      restrict: 'A',
      link: function(scope, element, attrs) {
        var datasetModel, headerClassmapModel, headersModel, reload, summariesModel, tbody, thead, thead_tr, vis;
        datasetModel = $parse(attrs.dataset);
        headersModel = $parse(attrs.headers);
        summariesModel = $parse(attrs.summaries);
        headerClassmapModel = $parse(attrs.headerClassmap);
        vis = d3.select(element[0]);
        thead = vis.append("thead");
        tbody = vis.append("tbody");
        thead_tr = thead.append("tr");
        reload = function() {
          var dataCells, dataCellsFuncs, dataRows, dataRowsFuncs, prepareRowFunction, prepareSummaryFunction, summaryCells, summaryCellsFuncs, summaryRows, summaryRowsFuncs, thFuncs, update,
            _this = this;
          if ((headersModel(scope) == null) || (datasetModel(scope) == null)) {
            return;
          }
          prepareSummaryFunction = function(row) {
            return function(column) {
              var klass, value;
              if (column.name === "row") {
                value = row[1];
              } else {
                value = column[row[0]];
              }
              if (!column.shown) {
                klass = "hidden";
              } else {
                if (value !== "0" && value !== 0 && row[1] === 'N/A' && value !== "N/A") {
                  klass = "na";
                }
              }
              return {
                klass: klass,
                value: value
              };
            };
          };
          prepareRowFunction = function(row) {
            return function(column) {
              var klass, value;
              value = row[column.name];
              klass = "";
              if (!column.shown) {
                klass = "hidden";
              } else {
                if (value === "NA") {
                  klass = "na";
                }
              }
              return {
                value: value,
                klass: klass
              };
            };
          };
          update = function(items, funcDict) {
            var added, removed, updated;
            added = items.enter();
            removed = items.exit();
            updated = items;
            funcDict.update(items);
            funcDict.update(funcDict.style(funcDict.add(added)));
            return funcDict.remove(removed);
          };
          thFuncs = {
            add: function(item) {
              return item.append("th");
            },
            remove: function(item) {
              return item.remove();
            },
            update: function(item) {
              return item.html(function(c) {
                return c.visual;
              }).attr("data-header", function(c) {
                return c.name;
              }).attr("class", function(c) {
                var _ref;
                return (_ref = headerClassmapModel(scope)[c.name]) != null ? _ref : "";
              }).style("display", function(c) {
                var _ref;
                if ((_ref = c.shown) != null ? _ref : true) {
                  return "table-cell";
                } else {
                  return "none";
                }
              });
            },
            style: function(item) {
              return item;
            }
          };
          summaryRowsFuncs = {
            add: function(item) {
              return item.append("tr");
            },
            remove: function(item) {
              return item.remove();
            },
            update: function(item) {
              return item;
            },
            style: function(item) {
              return item.attr("data-type", "summary").attr('class', function(c) {
                return "summary " + c[0];
              });
            }
          };
          dataRowsFuncs = {
            add: function(item) {
              return item.append("tr");
            },
            remove: function(item) {
              return item.remove();
            },
            update: function(item) {
              return item;
            },
            style: function(item) {
              return item.attr("data-type", "data").attr('class', function(c) {
                return "row" + c.row;
              });
            }
          };
          summaryCellsFuncs = {
            add: function(item) {
              return item.append("td");
            },
            remove: function(item) {
              return item.remove();
            },
            update: function(item) {
              return item.attr('class', function(item) {
                return item.klass;
              }).html(function(item) {
                return item.value;
              });
            },
            style: function(item) {
              return item;
            }
          };
          dataCellsFuncs = {
            add: function(item) {
              return item.append("td");
            },
            remove: function(item) {
              return item.remove();
            },
            update: function(item) {
              return item.attr('class', function(item) {
                return item.klass;
              }).html(function(item) {
                return item.value;
              });
            },
            style: function(item) {
              return item;
            }
          };
          update(thead_tr.selectAll("th").data(headersModel(scope)), thFuncs);
          summaryRows = tbody.selectAll("tr[data-type=\"summary\"]").data(summariesModel(scope));
          dataRows = tbody.selectAll("tr[data-type=\"data\"]").data(datasetModel(scope));
          update(summaryRows, summaryRowsFuncs);
          update(dataRows, dataRowsFuncs);
          summaryCells = summaryRows.selectAll("td").data(function(row) {
            return headersModel(scope).map(prepareSummaryFunction(row));
          });
          dataCells = dataRows.selectAll("td").data(function(row) {
            return headersModel(scope).map(prepareRowFunction(row));
          });
          update(summaryCells, summaryCellsFuncs);
          update(dataCells, dataCellsFuncs);
          return element.trigger("didReload");
        };
        return scope.$watch(headersModel, function(newVal, oldVal) {
          if (!newVal) {
            return;
          }
          return reload();
        });
      }
    };
  });

}).call(this);