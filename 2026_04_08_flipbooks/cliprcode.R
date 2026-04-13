library(gapminder)

gapminder |> 
  filter(year == 2002) |>
  filter(continent == "Americas") |> 
  ggplot() + 
  aes(y = country) + 
  aes(x = gdpPercap) + 
  aes(yend = country,
      xend = 0) +
  geom_segment(color = "red", 
               aes(xend = gdpPercap + 10000)) + 
  geom_segment() + 
  geom_point(size = 8) + 
  aes(color = I("blue")) + 
  aes(size = I(4))
  
