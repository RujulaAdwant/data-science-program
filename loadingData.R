#### Load in CSV file ####
spotify_ds <- read.csv("data/spotify_dataset.csv")
View(spotify_ds)


# Practice plotting with your dataset
library(ggplot2)
ggplot(data = spotify_ds, aes(x = Song.Name, y = Streams))+ geom_bar()
