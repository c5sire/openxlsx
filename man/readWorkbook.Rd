% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readWorkbook.R
\name{readWorkbook}
\alias{readWorkbook}
\title{Read data from a worksheet into a data.frame}
\usage{
readWorkbook(xlsxFile, sheet = 1, startRow = 1, colNames = TRUE,
  rowNames = FALSE, detectDates = FALSE, skipEmptyRows = TRUE,
  skipEmptyCols = TRUE, rows = NULL, cols = NULL, check.names = FALSE,
  namedRegion = NULL, na.strings = "NA", fillMergedCells = FALSE)
}
\arguments{
\item{xlsxFile}{An xlsx file}

\item{sheet}{The name or index of the sheet to read data}

\item{startRow}{first row to begin looking for data.  Empty rows at the top of a file are always skipped, 
regardless of the value of startRow.}

\item{colNames}{If \code{TRUE}, first row of data will be used as column names.}

\item{rowNames}{If \code{TRUE}, first column of data will be used as row names.}

\item{detectDates}{If \code{TRUE}, attempt to recognise dates and perform conversion.}

\item{skipEmptyRows}{If \code{TRUE}, empty rows are skipped else empty rows after the first row containing data 
will return a row of NAs}

\item{rows}{A numeric vector specifying which rows in the Excel file to read. 
If NULL, all rows are read.}

\item{cols}{A numeric vector specifying which columns in the Excel file to read. 
If NULL, all columns are read.}

\item{check.names}{logical. If TRUE then the names of the variables in the data frame 
are checked to ensure that they are syntactically valid variable names}

\item{namedRegion}{A named region in the Workbook. If not NULL startRow, rows and cols paramters are ignored.}

\item{na.strings}{A character vector of strings which are to be interpreted as NA. Blank cells will be returned as NA.}
}
\value{
data.frame
}
\details{
Creates a data.frame of all data in worksheet.
}
\examples{
xlsxFile <- system.file("readTest.xlsx", package = "openxlsx")
df1 <- readWorkbook(xlsxFile = xlsxFile, sheet = 1)

xlsxFile <- system.file("readTest.xlsx", package = "openxlsx")
df1 <- readWorkbook(xlsxFile = xlsxFile, sheet = 1, rows = c(1, 3, 5), cols = 1:3)
}
\author{
Alexander Walker
}
\seealso{
\code{\link{getNamedRegions}}

\code{\link{read.xlsx}}
}

