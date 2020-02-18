
shorten <- function(filename, c=c("all")){
  l <- colnames(filename)
  l <- gsub(" ","\n",l)
  colnames(filename) <- l
}
