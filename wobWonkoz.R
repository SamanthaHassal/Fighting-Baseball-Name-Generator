library(Lahman)

#load people tables
data(People)

#get first and last names
fname <- People$nameFirst
lname <- People$nameLast

#concatenate each first and last name into a single entry
tmp <- cbind(fname, lname)
myString <- paste(tmp[,1], tmp[,2], sep=" ")

#get the folder information
currentLocation <- getwd()
fileName <- paste(currentLocation, '/name_data/wobWonkoz.txt', sep='')

#save to a file
write(myString, file = fileName,
      ncolumns = if(is.character(myString)) 1 else 5,
      append = FALSE, sep = " ")


