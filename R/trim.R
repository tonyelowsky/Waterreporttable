trim <- function(filename,lrow="a",lcol="a"){
  if(lrow=="a"&lcol=="a"){
    lrow=which(filename$design1=="end")
    lcol=which(colnames(filename)=="design1")
    filename[1:lrow-1,1:lcol-1]
  }
  else if(lrow=="a"){
    filename[1:nrow(filename),1:lcol]}
  else if(lcol=="a"){
    filename[1:lrow,1:ncol(filename)]}
  else{
    filename[1:lrow,1:lcol]
  }
}
