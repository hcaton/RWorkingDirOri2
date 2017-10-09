pollutantmean <- function(directory, pollutant, id=1:332) {
	wd <- getwd()
	setwd(directory)
	if (length(id) == 1) {
		id <- id:id
		#print("id")
		#print(id)
	}
	DF <- NULL
	for(i in id) {
		j <- formatC(i, width=3, flag="0")
		#print(j)
		f <- paste0(j,".csv")
		df <- read.csv(f)      # read the file
  		DF <- rbind(DF, df)    # append the current file
		#f <- paste0(directory,"/",fle)
		#print("bozo")
	}
	#print("f")
	#write.csv(DF, "appended.csv", row.names=FALSE, quote=FALSE)
	#print("df")
	#ddf <- read.csv("appended.csv")
	myMean <- mean(DF[ , pollutant], na.rm=TRUE)
	print(myMean)
	#print(ddf)
	#print("appended")
	setwd(wd)
	#getwd()
	#print(getwd())

}