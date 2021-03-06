% Generated by roxygen2 (4.0.1): do not edit by hand
\name{ggvis_scale}
\alias{ggvis_scale}
\alias{is.ggvis_scale}
\title{Create a new ggvis_scale object.}
\usage{
ggvis_scale(property, name = property, label = name, type = NULL,
  domain = NULL, range = NULL, reverse = NULL, round = NULL, ...,
  subclass = NULL, override = NULL)

is.ggvis_scale(x)
}
\arguments{
\item{property}{The property to which the scale applies, such as "x", "y",
"fill", etc.}

\item{name}{Name of the scale, such as "x", "y", "fill", etc. Can also be an
arbitrary name like "foo".}

\item{label}{Label for the scale. Used for axis or legend titles.}

\item{type}{Type of scale. Should be one of "linear", "ordinal", "time",
"utc", "linear", "log", "pow", "sqrt", "quantile", "quantize", "threshold".}

\item{domain}{The domain of the scale, representing the set of data values.
For ordinal scales, a character vector; for quantitative scales, a numeric
vector of length two. Either value (but not both) may be NA, in which
case \code{domainMin} or \code{domainMax} is set. For dynamic scales, this
can also be a reactive which returns the appropriate type of vector.}

\item{range}{The range of the scale, representing the set of visual values.
For numeric values, the range can take the form of a two-element array with
minimum and maximum values. For ordinal data, the range may by an array of
desired output values, which are mapped to elements in the specified
domain. The following range literals are also available: "width", "height",
"shapes", "category10", "category20".}

\item{reverse}{If true, flips the scale range.}

\item{round}{If true, rounds numeric output values to integers. This can be
helpful for snapping to the pixel grid.}

\item{...}{other named arguments.}

\item{subclass}{Class name for subclass.  Will have \code{scale_} prepended.}

\item{override}{Should the domain specified by this ggvis_scale object
override other ggvis_scale objects for the same scale? Useful when domain is
manually specified. For example, by default, the domain of the scale
will contain the range of the data, but when this is TRUE, the specified
domain will override, and the domain can be smaller than the range of the
data. If \code{FALSE}, the \code{domain} will not behave this way. If
left \code{NULL}, then it will be treated as \code{TRUE} whenever
\code{domain} is non-NULL.}

\item{x}{object to test for scale-ness}
}
\description{
A scale object is a close mapping to a vega mark object. Vega scales
are documented in \url{https://github.com/trifacta/vega/wiki/Scales}.
}
\details{
This function is designed to be used by authors of new types of scale.
If you are a ggvis user, please use one of the more specific scale
functions starting with the \code{scale_}.

This is very close, but not exactly a vega scale object. Instead of being a
named list with a set of values, the domain can be  a vector of values, or a
reactive that returns such values.
}
\examples{
ggvis_scale("x", type = "linear")
ggvis_scale("x", "ord")
}
\seealso{
\url{https://github.com/trifacta/vega/wiki/Scales}
}
\keyword{internal}

