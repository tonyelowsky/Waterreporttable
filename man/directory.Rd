\name{directory}
\alias{directory}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create the standard table directory tree
}
\description{
This function creates the 4 standard folders used in water reports. It should be used first.
}
\usage{
directory()
}
There are no arguments
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


directory()
{
    if (!dir.exists("tables")) {
        dir.create("tables")
    }
    if (!dir.exists("tables/Rates")) {
        dir.create("tables/Rates")
    }
    if (!dir.exists("tables/RevRequirements")) {
        dir.create("tables/RevRequirements")
    }
    if (!dir.exists("tables/KeyAssumptions")) {
        dir.create("tables/KeyAssumptions")
    }
    if (!dir.exists("tables/CostOfService")) {
        dir.create("tables/CostOfService")
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Folders }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
