### Just a test for start
Hi <- print("I think I got it")
str(Hi)

### Loading the required packages
library(dplyr)
library(data.table)
library(tidyr)
library(gapminder)
### Loading the data 
gapminder
str(gapminder)
head(gapminder)

country_con <- gapminder %>% select(everything()) %>% 
  filter(country=="China") %>% arrange(desc(pop)) %>% 
  mutate(population = pop/1000000,GDP = gdpPercap, lifeExpectancy = lifeExp, .keep = "unused") 
View(country_con)
head(country_con)

gapminder %>% filter(country == "Afghanistan", year == 1962) %>%
  summarise(AvgLE = mean(lifeExp), MedGDP = median(gdpPercap)) 
