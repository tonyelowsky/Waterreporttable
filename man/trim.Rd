\name{trim}
\alias{trim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Trims the length and width of a data frame
}
\description{
takes a data frame and makes it as long and as wide as wanted, best used to cut off the design columns
}
\usage{
trim(filename, lrow = "a", lcol = "a")
}
the default usage trims the data frame to the row named end (design1), and the column named design1 and trims minus 1 of each

\arguments{
  \item{filename}{
a data frame
}
  \item{lrow}{
the last row to be included (default is nrow(filename))
}
  \item{lcol}{
the last column to be included (default is ncol(filename))
}
}
\details{
if no row and column number is chosen, function will look for design1 column and the row labeled "end" and remove them and anything beyond
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Anthony Elowsky
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

function (filename, lrow = "a", lcol = "a")
{
    if (lrow == "a" & lcol == "a") {
        lrow = which(filename$design1 == "end")
        lcol = which(colnames(filename) == "design1")
        filename[1:lrow - 1, 1:lcol - 1]
    }
    else if (lrow == "a") {
        filename[1:nrow(filename), 1:lcol]
    }
    else if (lcol == "a") {
        filename[1:lrow, 1:ncol(filename)]
    }
    else {
        filename[1:lrow, 1:lcol]
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
