fish_data <- read.csv("data_/Gaeta_etal_CLC_data.csv")

library(dplyr)
library(ggplot2)

#this pipes in the inital data and creates a column with fish length

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

# new data frame with only fish with a scale length of > 1mm r

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) %>% 
  filter(scalelength > 1)

ggplot(fish_data_cat, aes(length, scalelength, color=lakeid))+
  geom_point()
                        