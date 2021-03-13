% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grayscale.R
\name{grayscale}
\alias{grayscale}
\title{Converting a color image into a grayscale image.}
\usage{
grayscale(image, output_path)
}
\arguments{
\item{image}{string, path for the input image file}

\item{output_path}{string, path for the output image file}
}
\value{
an image file at the specified output path in .png format
}
\description{
Converting a color image into a grayscale image.
}
\examples{
grayscale("images/samples.jpg", "images/greyscale.png")
}