complete <- function(directory, iid=1:332) {
	wd <- getwd()
	setwd(directory)
	if (length(iid) == 1) {
		iid <- iid:iid
		#print("iid")
		#print(iid)
	}
	DF <- data.frame(id=integer(), nobs=integer())
	for(i in iid) {
		j <- formatC(i, width=3, flag="0")
		#print(j)
		f <- paste0(j,".csv")
		df <- read.csv(f)      # read the file
		final <- df[complete.cases(df), ]
		#print(final)
		#print(nrow(final))
		rows <- nrow(final)
		de <- list(id=i, nobs=rows)
  		DF <- rbind(DF,de, stringsAsFactors=FALSE)
		#f <- paste0(directory,"/",fle)
		#print("bozo")
	}
	#print("f")
	#write.csv(DF, "appended.csv", row.names=FALSE, quote=FALSE)
	#print("df")
	#ddf <- read.csv("appended.csv")
	print(DF)
	#print(ddf)
	#print("appended")
	setwd(wd)
	DF
	#getwd()
	#print(getwd())

}