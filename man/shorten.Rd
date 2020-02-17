\name{shorten}
\alias{shorten}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function which turn long column names into list type names
}
\description{
A function which turn long column names into list type names
}
\usage{
shorten(filename)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{
the name of a data frame
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
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

shorten(filename)
{
    gsub(" ", "\n", colnames(filename))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
