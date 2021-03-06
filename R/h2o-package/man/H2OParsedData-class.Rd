\name{H2OParsedData-class}
\Rdversion{1.1}
\docType{class}
\alias{H2OParsedData-class}
\alias{-,H2OParsedData,H2OParsedData-method}
\alias{-,H2OParsedData,numeric-method}
\alias{-,numeric,H2OParsedData-method}
\alias{!,H2OParsedData-method}
\alias{!=,H2OParsedData,H2OParsedData-method}
\alias{!=,H2OParsedData,numeric-method}
\alias{!=,numeric,H2OParsedData-method}
\alias{[,H2OParsedData-method}
\alias{[<-,H2OParsedData-method}
\alias{*,H2OParsedData,H2OParsedData-method}
\alias{*,H2OParsedData,numeric-method}
\alias{*,numeric,H2OParsedData-method}
\alias{/,H2OParsedData,H2OParsedData-method}
\alias{/,H2OParsedData,numeric-method}
\alias{/,numeric,H2OParsedData-method}
\alias{&,H2OParsedData,H2OParsedData-method}
\alias{&,H2OParsedData,numeric-method}
\alias{&,numeric,H2OParsedData-method}
\alias{\%\%,H2OParsedData,H2OParsedData-method}
\alias{\%\%,H2OParsedData,numeric-method}
\alias{\%\%,numeric,H2OParsedData-method}
\alias{+,H2OParsedData,H2OParsedData-method}
\alias{+,H2OParsedData,numeric-method}
\alias{+,numeric,H2OParsedData-method}
\alias{<,H2OParsedData,H2OParsedData-method}
\alias{<,H2OParsedData,numeric-method}
\alias{<,numeric,H2OParsedData-method}
\alias{<=,H2OParsedData,H2OParsedData-method}
\alias{<=,H2OParsedData,numeric-method}
\alias{<=,numeric,H2OParsedData-method}
\alias{==,H2OParsedData,H2OParsedData-method}
\alias{==,H2OParsedData,numeric-method}
\alias{==,numeric,H2OParsedData-method}
\alias{>,H2OParsedData,H2OParsedData-method}
\alias{>,H2OParsedData,numeric-method}
\alias{>,numeric,H2OParsedData-method}
\alias{>=,H2OParsedData,H2OParsedData-method}
\alias{>=,H2OParsedData,numeric-method}
\alias{>=,numeric,H2OParsedData-method}
\alias{|,H2OParsedData,H2OParsedData-method}
\alias{|,H2OParsedData,numeric-method}
\alias{|,numeric,H2OParsedData-method}
\alias{$,H2OParsedData-method}
\alias{$<-,H2OParsedData-method}
\alias{abs,H2OParsedData-method}
\alias{apply,H2OParsedData-method}
\alias{as.data.frame,H2OParsedData-method}
\alias{as.factor,H2OParsedData-method}
\alias{ceiling,H2OParsedData-method}
\alias{colMeans,H2OParsedData-method}
\alias{colnames,H2OParsedData-method}
\alias{colnames<-,H2OParsedData,character-method}
\alias{colnames<-,H2OParsedData,H2OParsedData-method}
\alias{dim,H2OParsedData-method}
\alias{dim<-,H2OParsedData-method}
\alias{exp,H2OParsedData-method}
\alias{floor,H2OParsedData-method}
\alias{h2o.cut,H2OParsedData,numeric-method}
\alias{h2o<-,H2OParsedData,H2OParsedData-method}
\alias{h2o<-,H2OParsedData,numeric-method}
\alias{head,H2OParsedData-method}
\alias{histograms,H2OParsedData-method}
\alias{ifelse,H2OParsedData-method}
\alias{is.factor,H2OParsedData-method}
\alias{is.na,H2OParsedData-method}
\alias{length,H2OParsedData-method}
\alias{levels,H2OParsedData-method}
\alias{log,H2OParsedData-method}
\alias{names,H2OParsedData-method}
\alias{names<-,H2OParsedData-method}
\alias{ncol,H2OParsedData-method}
\alias{nrow,H2OParsedData-method}
\alias{quantile,H2OParsedData-method}
\alias{range,H2OParsedData-method}
\alias{sd,H2OParsedData-method}
\alias{show,H2OParsedData-method}
\alias{sign,H2OParsedData-method}
\alias{sqrt,H2OParsedData-method}
\alias{summary,H2OParsedData-method}
\alias{tail,H2OParsedData-method}

\title{Class \code{"H2OParsedData"}}
\description{
A class for representing imported FluidVecs data sets that have been parsed.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("H2OParsedData", ...)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{h2o}:}{Object of class \code{"H2OClient"}, which is the client object that was passed into the function call.}
    \item{\code{key}:}{Object of class \code{"character"}, which is the hex key assigned to the imported data.}
    \item{\code{logic}:}{Object of class \code{"logical"}, indicating whether the \code{"H2OParsedData"} object represents logical data}
  }
}
\section{Methods}{
  \describe{
    \item{-}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{-}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{-}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{!}{\code{signature(x = "H2OParsedData")}: ... }
    \item{!=}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{!=}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{!=}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{[}{\code{signature(x = "H2OParsedData")}: ... }
    \item{[<-}{\code{signature(x = "H2OParsedData")}: ... }
    \item{*}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{*}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{*}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{/}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{/}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{/}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{&}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{&}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{&}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{\%\%}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{\%\%}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{\%\%}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{+}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{+}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{+}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{<}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{<}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{<}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{<=}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{<=}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{<=}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{==}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{==}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{==}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{>}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{>}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{>}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{>=}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{>=}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{>=}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{|}{\code{signature(e1 = "H2OParsedData", e2 = "H2OParsedData")}: ... }
    \item{|}{\code{signature(e1 = "H2OParsedData", e2 = "numeric")}: ... }
    \item{|}{\code{signature(e1 = "numeric", e2 = "H2OParsedData")}: ... }
    \item{$}{\code{signature(x = "H2OParsedData")}: ... }
    \item{$<-}{\code{signature(x = "H2OParsedData")}: ... }
    \item{abs}{\code{signature(x = "H2OParsedData")}: ... }
    \item{apply}{\code{signature(X = "H2OParsedData")}: ... }
    \item{as.data.frame}{\code{signature(x = "H2OParsedData")}: ... }
    \item{as.factor}{\code{signature(x = "H2OParsedData")}: ... }
    \item{ceiling}{\code{signature(x = "H2OParsedData")}: ... }
    \item{colMeans}{\code{signature(x = "H2OParsedData")}: ... }
    \item{colnames}{\code{signature(x = "H2OParsedData")}: ... }
    \item{colnames<-}{\code{signature(x = "H2OParsedData", value = "character")}: ... }
    \item{colnames<-}{\code{signature(x = "H2OParsedData", value = "H2OParsedData")}: ... }
    \item{dim}{\code{signature(x = "H2OParsedData")}: ... }
    \item{dim<-}{\code{signature(x = "H2OParsedData")}: ... }
    \item{exp}{\code{signature(x = "H2OParsedData")}: ... }
    \item{floor}{\code{signature(x = "H2OParsedData")}: ... }
    \item{h2o.cut}{\code{signature(x = "H2OParsedData", breaks = "numeric")}: ... }
    \item{h2o<-}{\code{signature(x = "H2OParsedData", value = "H2OParsedData")}: ... }
    \item{h2o<-}{\code{signature(x = "H2OParsedData", value = "numeric")}: ... }
    \item{head}{\code{signature(x = "H2OParsedData")}: ... }
    \item{histograms}{\code{signature(object = "H2OParsedData")}: ... }
    \item{ifelse}{\code{signature(test = "H2OParsedData")}: ... }
    \item{is.factor}{\code{signature(x = "H2OParsedData")}: ... }
    \item{is.na}{\code{signature(x = "H2OParsedData")}: ... }
    \item{length}{\code{signature(x = "H2OParsedData")}: ... }
    \item{levels}{\code{signature(x = "H2OParsedData")}: ... }
    \item{log}{\code{signature(x = "H2OParsedData")}: ... }
    \item{names}{\code{signature(x = "H2OParsedData")}: ... }
    \item{names<-}{\code{signature(x = "H2OParsedData")}: ... }
    \item{ncol}{\code{signature(x = "H2OParsedData")}: ... }
    \item{nrow}{\code{signature(x = "H2OParsedData")}: ... }
    \item{quantile}{\code{signature(x = "H2OParsedData")}: ... }
    \item{range}{\code{signature(x = "H2OParsedData")}: ... }
    \item{sd}{\code{signature(x = "H2OParsedData")}: ... }
    \item{show}{\code{signature(object = "H2OParsedData")}: ... }
    \item{sign}{\code{signature(x = "H2OParsedData")}: ... }
    \item{sqrt}{\code{signature(x = "H2OParsedData")}: ... }
    \item{summary}{\code{signature(object = "H2OParsedData")}: ... }
    \item{tail}{\code{signature(x = "H2OParsedData")}: ... }
	 }
}
\seealso{
%%  ~~objects to See Also as \code{\link{~~fun~~}}, ~~~
%%  ~~or \code{\linkS4class{CLASSNAME}} for links to other classes ~~~
\code{\linkS4class{H2ORawData}, \link{h2o.parseRaw}}
}
\examples{
showClass("H2OParsedData")
}
\keyword{classes}
