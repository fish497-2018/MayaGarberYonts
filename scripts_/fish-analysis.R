

library(dplyr)
library(ggplot2)

#reads in our data
fish_data <- read.csv("Gaeta_etal_CLC_data_1.csv")

# 1 
#GitHub accout created

# 2 Solo Commit
#this pipes in the inital data and creates a column with fish length
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

# 3
# new data frame with only fish with a scale length of > 1mm r
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) %>% 
  filter(scalelength > 1)

# 4 Commit Multiple Files





#Histogram, lake id by color
ggplot(fish_data_cat, aes(length, scalelength, color=lakeid))+
  geom_point()+
  theme_classic()
                        