complete <- function(directory, id = 1:332) {
  myfiles <- list.files(directory)
  myobs <- matrix(nrow = length(id), ncol = 2, dimnames=list(NUL
L,c("id","nobs")))
  counter <- 1
  for (i in id)
  {
    mypath <- paste(directory,myfiles[i],sep="/")
    myload <- read.csv(mypath)
    myobs[counter,1] <- i
    myobs[counter,2] <- sum(complete.cases(myload))
    counter <- counter + 1
  }
  as.data.frame(myobs)
}
