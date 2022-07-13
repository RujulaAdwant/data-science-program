# Practice plotting with your dataset
library(ggplot2)
ggplot(data = spotify_ds, aes(x = Popularity)) + 
  geom_boxplot()

ggplot(data = spotify_ds, aes(x = Artist, y = Streams, color = Popularity)) +
  geom_bar(stat = "summary", fun = "mean") +
  labs(title = "Spotify Top 200: Number of Streams by Song Genre")

ggplot(data = spotify_ds, aes(x = Number.of.Times.Charted)) +
  geom_boxplot(color = "#005ce6", fill = "#ffe6ff") +
  labs(title = "Number of Times a Song Charted", x = "Number of Times Charted")

#ggplot(data = spotify_ds, aes(x = Highest.Charting.Position, y = Number.of.Times.Charted))+
#  geom_line()