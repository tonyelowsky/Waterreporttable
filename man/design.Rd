\name{design}
\alias{design}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Find Design Characteristics
}
\description{
This function reads a csv file with a design1 column and takes the necessary formatting data which will be used in the corresponding table.
}
\usage{
design(filename)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{
a data frame with a design1 coulmn
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
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


## The function is currently defined as
design(filename)
{
    bold <- c(which(filename$design1 == "bold"))
    blue <- c(which(filename$design1 == "blue"))
    italic <- c(which(filename$design1 == "italic"))
    red <- c(which(filename$design1 == "red"))
    cbind(bold, blue, italic, red)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ design }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
