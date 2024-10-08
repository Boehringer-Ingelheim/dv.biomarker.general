% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imod_heatmap2d_svg.R
\name{HM2SVG_plot}
\alias{HM2SVG_plot}
\title{svg heatmap plot}
\usage{
HM2SVG_plot(data, x_desc, y_desc, z_desc, pal_fun, palette, ns)
}
\arguments{
\item{data}{data to plot. It expects the following format:
- columns names are \code{x}, \code{y}, \code{z} and, optionally, \code{label}
- both \code{x} and \code{y} columns are factors
- There is one entry for each combination of "x" and "y" present in the dataset.
In other words, the values for each heatmap rectangle are defined explicitly, even if they are NA
- Axis labels and legend title are stored as the attribute "label" of the "x", "y" and "z" columns
- The order of records in the data frame dictates the ordering of the x/y axes in the final plot}

\item{x_desc, y_desc, z_desc}{Indicate the absence/presence and location of the axis descriptors
(the descriptor for the x and y axes are the plot ticks; for the z axis it's the legend)
- x_desc can take the following values: "N" (north), "S" (south), NULL (absent)
- y_desc can take the following values: "W" (west), "E" (east), NULL (absent)
- z_desc can take the following values: "N", "E", "S", "W", NULL}

\item{pal_fun}{Function that maps values on column \code{z} of \code{data} to a color in #rrggbb or #rrggbbaa format}

\item{palette}{Vector that maps values to "z" colors. The names of the vector are hexadecimal colors encoded as
#rrggbb or #rrggbbaa (red, green, blue, alpha) and the values are the "z" values that should be
mapped to that color.
If "z" is categorical, the palette should be complete (i.e. it should offer one color per value).
If "z" is continuous, the palette should contain at least two values covering the min-max range
of possible values. If it contains more, the color of each grid rectangle will be linearly
interpolated according to where its value falls between the two surrounding provided colors.}

\item{ns}{namespace to apply to the click events}
}
\description{
Plot the contents of a dataframe as a heatmap, with optional legends, palette and alignment margins. None of
the parameters are reactive
}
\keyword{internal}
