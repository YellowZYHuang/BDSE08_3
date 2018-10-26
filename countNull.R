mergeAdUser[is.na(mergeAdUser)]<-"NULL" # transfer NA to NUll

#Calculate the number of Null for each column

colName <- colnames(mergeAdUser)

for(i in 1:length(mergeAdUser)){
  print(colName[i])
  print(sum(mergeAdUser[,i]=="NULL"))
}

#show the column name + Null number is difficult!
colName <- colnames(mergeAdUser)
class(colName)
colName[2]

for(i in 1:2){
  sprintf("%s"+"%d", colName[i], sum(mergeAdUser[,i]=="NULL"))
}