
shorten <- function(filename, c=c("all")){
  l <- as.character(colnames(filename))
  l <- gsub(" ","\n",l)
  colnames(filename) <- l
}
