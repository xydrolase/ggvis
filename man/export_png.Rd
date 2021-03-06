% Generated by roxygen2 (4.0.1): do not edit by hand
\name{export_png}
\alias{export_png}
\alias{export_svg}
\title{Export a PNG or SVG from a ggvis object}
\usage{
export_png(vis, file = NULL)

export_svg(vis, file = NULL)
}
\arguments{
\item{vis}{A ggvis object.}

\item{file}{Output file name. If NULL, defaults to "plot.svg" or "plot.png".}
}
\description{
This requires that the external program \code{vg2png} is installed. This is
part of \code{vega} node.js module.
}
\seealso{
\url{https://github.com/trifacta/vega} for information on installing
  \code{vg2png} and \code{vg2svg}.
}

