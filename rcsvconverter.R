library(plyr)
library(XML)

xml <- xmlParse("C:/Users/josh.fullmer/Documents/R/rcsvconverter/data/testxml.xml")

xmllist <- xmlToList(xml)

df <- ldply(xmllist,data.frame)

write.csv(df,"./data/testxml.csv",row.names = F,na="")