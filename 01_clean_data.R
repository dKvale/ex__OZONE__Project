library(tidyverse)


## Load the data -----------------------------------------------------------------------

air_data <- read_csv("data/OZONE_samples.csv")


## View the data -----------------------------------------------------------------------

ggplot(air_data, aes(x = TEMP_F, y = OZONE)) + 
    geom_point(alpha = 0.2, size = 2) +
    geom_smooth(method = "lm")


## Clean the ozone data -----------------------------------------------------------------

# Drop values out of range
air_data <- air_data %>% filter(OZONE > 0, TEMP_F < 199) 

# Convert all samples to PPB
air_data <- air_data %>% 
            mutate(OZONE = ifelse(UNITS == "PPM", OZONE * 1000, OZONE)) 
            
            
