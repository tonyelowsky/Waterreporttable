read <- function(filename){
  read.csv(paste0(filename,".csv"),check.names = F)
}
