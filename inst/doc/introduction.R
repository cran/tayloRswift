## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(tayloRswift)
library(ggplot2)

## -----------------------------------------------------------------------------

data <- data.frame(c = LETTERS[1:3],
                   x = c(1,5,7),
                   y = c(5,9,13))
ggplot(data, aes(x =x, y = y, color = c)) +
  geom_point(size = 4) +
  scale_color_taylor(palette = "taylorRed")+
  theme_minimal()


## -----------------------------------------------------------------------------
ggplot(data, aes(x=x, fill = c))+
  geom_bar()+
  theme_minimal()+
  scale_fill_taylor(palette = "taylorRed")


