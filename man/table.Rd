\name{table}
\alias{table}

\title{
makes tables
}
\description{
this function makes tables in the standard water report format.
}
\usage{
table(fname, d = NULL, reg = T, type = "", Ititle = "")
}

\arguments{
  \item{fname}{
a data frame which wants to become a table
}
  \item{d}{
a data frame that includes design elements, created by design()
}
  \item{reg}{
A logical indicating whether the table is regular, will add more functionality later
}
  \item{type}{
a string indicating which type of table is being created, this tells it where to save. current options are "cos","rates","revreq", and "key"
}
  \item{Ititle}{
a string for the name that the table will be saved under
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
function (fname, d = NULL, reg = T, type = "", Ititle = "")
{
    rdnred <- rgb(166, 9, 61, maxColorValue = 255)
    rdnblue <- rgb(0, 62, 110, maxColorValue = 255)
    rdngrey <- rgb(188, 190, 192, maxColorValue = 255)
    rdnaqua <- rgb(100, 196, 169, maxColorValue = 255)
    rdnora <- rgb(239, 72, 72, maxColorValue = 255)
    rdngreen <- rgb(173, 209, 76, maxColorValue = 255)
    c2 <- c(rdnblue, rdnred)
    c6 <- c(rdnblue, rdngrey, rdnaqua, rdnred, rdnora, rdngreen)
    bg2 <- c("snow1", "snow2")
    f3 <- c("black", "white", "red")
    greyrows <- seq(2, nrow(fname), 2)
    bolds <- d[, 1]
    its <- d[, 4]
    blues <- d[, 2]
    reds <- d[, 3]
    bold <- matrix("plain", nrow(fname), ncol(fname))
    bold[bolds, 1:ncol(fname)] <- c("bold")
    bold[its, 1:ncol(fname)] <- c("italic")
    bcell <- matrix(c(bg2[1]), nrow(fname), ncol(fname))
    bcell[greyrows, 1:ncol(fname)] <- c(bg2[2])
    bcell[blues, 1:ncol(fname)] <- c(c2[1])
    fontcol <- matrix(c(f3[1]), nrow(fname), ncol(fname))
    fontcol[reds, 1:ncol(fname)] <- c(f3[3])
    gdltheme <- ttheme_minimal(core = list(bg_params = list(fill = bcell,
        col = F), fg_params = list(fontface = bold, hjust = 1,
        x = 0.96, col = fontcol)), colhead = list(fg_params = list(col = f3[2],
        fontface = "bold"), bg_params = list(fill = c2[1], col = f3[2])))
    fgrid <- tableGrob(theme = gdltheme, format(fname), rows = NULL)
    fgrid <- gtable_add_grob(fgrid, grobs = segmentsGrob(x0 = unit(0,
        "npc"), y0 = unit(0, "npc"), x1 = unit(1, "npc"), y1 = unit(0,
        "npc"), gp = gpar(lwd = 4, col = c2[1])), t = nrow(fname) +
        1, b = nrow(fname) + 1, l = 1, r = ncol(fname))
    h3 = grid::convertHeight(sum(fgrid$heights), "in", TRUE)
    w3 = grid::convertWidth(sum(fgrid$widths), "in", TRUE)
    fname <- as.character(names(fname))
    if (type == "rates") {
        ggsave(filename = paste0("tables/Rates/", Ititle, ".jpg",
            sep = ""), fgrid, height = h3, width = w3)
    }
    else if (type == "cos") {
        ggsave(filename = paste0("tables/CostOfService/", Ititle,
            ".jpg", sep = ""), fgrid, height = h3, width = w3)
    }
    else if (type == "revreq") {
        ggsave(filename = paste0("tables/RevRequirements/", Ititle,
            ".jpg", sep = ""), fgrid, height = h3, width = w3)
    }
    else if (type == "key") {
        ggsave(filename = paste0("tables/KeyAssumptions/", Ititle,
            ".jpg", sep = ""), fgrid, height = h3, width = w3)
    }
    else {
        ggsave(filename = paste0(Ititle, ".jpg", sep = ""), fgrid,
            height = h3, width = w3)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
