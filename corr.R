corr <- function(directory, threshold = 0) {
  source('complete.R')
  results=vector()
  myfiles <- list.files(directory)
  completes <- complete(directory)
  overthreshold <- matrix(completes[completes[2] > threshold], n
col=2)
  for (file in myfiles[overthreshold[,1]])
  {
    mydat = read.csv(paste(directory,file,sep="/"))
    mysub = subset(mydat,subset=complete.cases(mydat),select=c(s
ulfate,nitrate))
    results=append(results,cor(mysub[1],mysub[2]))
  }
  results
}
~                                                               
~       
