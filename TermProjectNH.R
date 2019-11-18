library(arcos)
library(knitr)
library(tigris)
library(viridis)
library(tidyverse)
library(scales)

nh <- summarized_county_annual(state="NH", key="WaPo")

kable(head(nh))

## Set the option for shapefiles to load with sf
options(tigris_class = "sf")

## Function to download county shapefiles in West Virginia
nh_shape <- counties(state="NH", cb=T)

## Join the county dosage data we pulled
nh<- left_join(nh, nh_shape, by=c("countyfips"="GEOID"))

# Mapping with ggplot2, sf, and viridis

nh %>%
  ggplot(aes(geometry=geometry, fill = DOSAGE_UNIT, color = DOSAGE_UNIT)) +
  facet_wrap(~year, ncol=2) +
  geom_sf() +
  coord_sf(crs = 26915) + 
  scale_fill_viridis(direction=-1, label = comma) +
  scale_color_viridis(direction=-1, label = comma) +
  theme_void() +
  theme(panel.grid.major = element_line(colour = 'transparent')) +
  labs(title="Oxycodone and hydrocodone pills in New Hampshire", caption="Source: The Washington Post, ARCOS")

#### NORMALIZED FOR POP:

population <- county_population(state="NH", key="WaPo") %>% 
  # isolate the columns so it doesn't conflict in a join (there are doubles, that's why)
  select(countyfips, year, population)

left_join(nh, population) %>% 
  mutate(per_person=DOSAGE_UNIT/population) %>%
  ggplot(aes(geometry=geometry, fill = per_person, color = per_person)) +
  facet_wrap(~year, ncol=2) +
  geom_sf() +
  coord_sf(crs = 26915) + 
  scale_fill_viridis(direction=-1, label = comma) +
  scale_color_viridis(direction=-1, label = comma) +
  theme_void() +
  theme(panel.grid.major = element_line(colour = 'transparent')) +
  labs(title="Oxycodone and hydrocodone pills in New Hampshire per person", caption="Source: The Washington Post, ARCOS")

nh <- left_join(nh, population)

nh$pills_per = nh$DOSAGE_UNIT/nh$population

nh

