% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flowLearn.R
\name{flAlignThreshold}
\alias{flAlignThreshold}
\title{Aligns two densities A and B with each other and transfers a given reference threshold in B to A.}
\usage{
flAlignThreshold(dens, refDens, refThreshold)
}
\arguments{
\item{dens}{A R density object with unknown threshold.}

\item{refDens}{A reference R density object with known threshold.}

\item{refThreshold}{The threshold belonging to refDens.}
}
\value{
A double value representing the threshold that resulted from aligning both densities and transferring the reference threshold. If refThreshold is NA, this method returns NA as well.
}
\description{
Uses Derivative Dynamic Time Warping to align a given density A with a reference density B and transfers a reference threshold fromB to A.
}
\examples{
dd <- flFind(flSampleDensdat, population = 'plasma', channelIdx = 1)
dens <- flGetDensity(flAt(dd, 1))
trueThresh <- flGetGate(flAt(dd, 1))[1]
refDens <- flGetDensity(flAt(dd, 2))
refThresh <- flGetGate(flAt(dd, 2))[1]

predictedThreshold <- flAlignThreshold(dens, refDens, refThresh)
flPlotDensThresh(dens, refThresh, trueThresh)

}
