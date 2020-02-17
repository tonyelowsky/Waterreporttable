\name{read}
\alias{read}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Simplifies reading csv files

}
\description{
This function just makes reading csv files using less typing, also, it leaves spaces in the column names
}
\usage{
read(filename)
}

\arguments{
  \item{filename}{
filename corresponds to a character string which is the name for a csv file in the directory
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
read(filename)
{
    read.csv(paste0(filename, ".csv"), check.names = F)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ reading }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
