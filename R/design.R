design <- function(filename){
  bold<-c(which(filename$design1=="bold"))
  blue<-c(which(filename$design1=="blue"))
  italic<-c(which(filename$design1=="italic"))
  red<-c(which(filename$design1=="red"))
  cbind(bold,blue,italic,red)

}
