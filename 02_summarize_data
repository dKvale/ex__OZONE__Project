library(tidyverse)

### Load the data ----------------------------------------------------------

air_data <- read_csv("data/OZONE_samples.csv")



### Summarize the data ----------------------------------------------------------

air_data <- air_data %>% 
            group_by(SITE, YEAR) %>% 
            summarize(AVG_OZONE = mean(OZONE) %>% round(2),
                      AVG_TEMP  = mean(TEMP_F) %>% round(2))



### Save the data ----------------------------------------------------------

air_data %>% write_csv("results/2015-17_ozone_summary.csv")


