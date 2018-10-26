#install.packages("magrittr")
#library(magrittr)
install.packages("dplyr")
library(dplyr)

ad_feature %>% 
  filter(customer == 14) %>% 
  group_by(cate_id) %>% 
  summarise(count = sum()) #test

mergeAdUser %>% 
  filter(clk == 1) %>% 
  group_by(user) %>% 
  summarise(count = sum(clk)) # count # of click user 460896

mergeAdUser %>% 
  group_by(user) %>% 
  summarise(count = sum(clk)) %>%
  filter(count == 0) # count # of nonclick user 600,852

# total user is 1061768 from user_profile table rowsNumber

sum(mergeAdUser$clk==1) # number of click data 1284513
sum(mergeAdUser$clk==0) # number of click data 23744922
sum(mergeAdUser$nonclk==0) # number of click data 1284513
sum(mergeAdUser$nonclk==1) # number of click data 23744922

adgroup <- mergeAdUser %>% 
  arrange(adgroup_id) %>% 
  head(100000)
write.table(adgroup, file = "orderByAdgroup.csv", row.names = F, sep = ",")

