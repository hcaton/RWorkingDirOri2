corr <- function(directory, threshold=0) {
	wd <- getwd()
	setwd(directory)
	vector <- c()
	#print(dir())
	#print("c")
	#DF <- data.frame(id=integer(), nobs=integer())
	files <- list.files(path=getwd(), pattern="*.csv")
	#print("d")
	#print(length(files))
	#for(i in length(files)) {
		#print(files[i])
	#}
	for(file in files) {
		#break()
		#print(file)
    		t <- read.csv(file, header=TRUE) # load file
		t <- t[complete.cases(t), ]
    		# apply function
		#print(nrow(t))
		#print(complete.cases(t))
		if (nrow(t) == 0) {
			#print("nothing")
			c = c()
		}
		else if (nrow(t) < threshold) {
			c = c()
		}
		else {
			c <- cor(t$sulfate, t$nitrate)
		}
		#print(c)
		vector <- c(vector, c)
    		#out <- function(t)
    		# write to file
    		#write.table(out, "path/to/output", sep="\t", quote=F, row.names=F, col.names=T)
	}

	
	#print(vector)
	#print("f")
	#write.csv(DF, "appended.csv", row.names=FALSE, quote=FALSE)
	#print("df")
	#ddf <- read.csv("appended.csv")
	#print(DF)
	#print(ddf)
	#print("appended")
	setwd(wd)
	#getwd()
	#(getwd())
	vector

}