library(ggplot2)
library(data.table)
library(dplyr)
install.packages("data.table")
load("suicides.rdata")

all_suicides <- copy(suicides)

suicides <- suicides %>% 
  group_by(year, state, means) %>% 
  mutate(deaths = sum(deaths))

bare <- ggplot(suicides)
               
aesthetic <- ggplot(suicides, aes(x=year, y=deaths))

scatter <- ggplot(suicides, aes(x=year, y=deaths)) +
            geom_point()
print(scatter)
