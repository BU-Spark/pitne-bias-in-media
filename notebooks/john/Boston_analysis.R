library(tidyverse)

library(sf)
names(dat)
install.packages("tidycensus")
library('tidycensus')
s_tract_geometry_list <- list()





census_api_key('')

s_tract_geometry <- get_acs(geography = "tract", state = "MA", county = c("Suffolk",  "Norfolk"),variables = "B19013_001",
 geometry = TRUE)
 
s_tract_geometry$cleaned_string <- as.numeric(gsub("\\D", "", s_tract_geometry$NAME))

plot<-full_join(s_tract_geometry, nineteen_set, by = "cleaned_string")

melted_df <- pivot_longer(dat, cols = c('AI.AN','Asian','White','NHPI','Other','Black'), names_to = "Race", values_to = "Count")

melted_df%>%
  group_by(neighborhood,Race)%>%
  filter(neighborhood != 0, Count!=0, Race != 'Total')%>%
  summarise(race_dist = sum(Count), Race = Race)%>%
  ggplot(aes(reorder(neighborhood,-race_dist)))+
  geom_bar(aes(fill = Race))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1),text = element_text(family = "Times New Roman"))+
  theme(panel.background = element_rect(fill = "white"))+
  labs(x = 'Neighborhoods', y = 'Total', title = 'Distribution of Race per Neighborhood All Years')
  


ggplot() +
  geom_sf(data = s_tract_geometry)+
  geom_sf(data = plot, aes(fill = body_sentiment ))+
  theme_minimal() +  # Remove default background and gridlines
  theme(
    panel.grid.major = element_blank(),  # Remove major gridlines
    panel.grid.minor = element_blank(),  # Remove minor gridlines
    panel.border = element_blank(),  # Remove panel border
    axis.line = element_blank(),  # Remove axis lines
    axis.text.x = element_blank(),  # Remove x-axis text
    axis.text.y = element_blank(),  # Remove y-axis text
    axis.ticks = element_blank(),  # Remove axis ticks
    plot.background = element_rect(fill = "white", color = NA),  # Change background to white
    text = element_text(family = "Times New Roman")
  )+
  labs(fill='Sentiment Score') 

