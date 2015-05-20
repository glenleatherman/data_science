pollutantmean <- function(directory, pollutant, id = 1:332) {
   mypop <- vector()
   myfiles <- list.files(directory)
   for (i in id)
   {
     mypath <- paste(directory,myfiles[i],sep="/")
     myload <- read.csv(mypath)
     mydata <- myload[[pollutant]][!is.na(myload[[pollutant]])]
     mypop <- append(mypop,mydata)
   }
   mean(mypop)
}
~             
