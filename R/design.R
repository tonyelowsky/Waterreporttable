design <- function(filename){
  bold<-c(which(filename$design1=="bold"),NA)
  blue<-c(which(filename$design1=="blue"),NA)
  italic<-c(which(filename$design1=="italic"),NA)
  red<-c(which(filename$design1=="red"),NA)

  cbind(bold,blue,red,italic)

  columns <- filename$design2
}
