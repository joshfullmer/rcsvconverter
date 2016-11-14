library(plyr)
library(XML)

xml <- xmlParse("C:/Users/josh.fullmer/Documents/R/rcsvconverter/data/testxml.xml")

xmllist <- xmlToList(xml)

df <- ldply(xmllist,data.frame)

write.csv(df,"./data/testxml.csv",row.names = F,na="")

#xmllist <- t(xmllist)
#xmldf <- as.data.frame(xmllist,row.names = T)

#test <- cbind(xmldf,t(as.data.frame(lapply(xmldf$batters,unlist))))
