
shorten <- function(filename, d="all"){
  if(d=="all"){
    gsub(" ","\n",colnames(filename))
    }
  else{
    gsub(" ","\n",colnames(filename)[c(d)])
  }

}
