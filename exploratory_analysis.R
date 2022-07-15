#### Loading all packages ####

library(ggplot2)
library(dplyr)
install.packages("ggthemes")
library(ggthemes)

spotify_ds <- read.csv("data/spotify_dataset.csv")
View(spotify_ds)



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

## Practice subsetting data
# use a combo of filter, select, mutate, arrange, summarize, group_by, sample, and/or slice
# create a visualization using a new subset of data

View(spotify_ds)
names(spotify_ds)

?names()

new_data <- select(spotify_ds, Song.Name, Artist, Streams, Popularity)
new_data
arrange(new_data, desc(Streams))
new_data <- head(new_data, 15)
new_data
View(new_data)

ggplot(data = new_data, aes(x = Artist, y = Streams, color = Popularity)) + 
  geom_bar(stat = "summary", fun = "mean") +
  labs(title = "Spotify Top 200 List: Streams by Artist")





#### Session 8 ####

new_spotify <- select(spotify_ds, Artist, Song.Name, Streams, Popularity, Highest.Charting.Position)
  # only show the columns of the artist, song name, number of streams, population, and highest charting position
new_spotify <- filter(new_spotify, Artist == "Olivia Rodrigo")
  # only show rows/observations with the artist as Olivia Rodrigo

summary_pop <- summarize(new_spotify, Avg.Pop = mean(Popularity))
  # to show average popularity of Olivia Rodrigo songs
new_spotify <- mutate(new_spotify, summary_pop, summarize(new_spotify, Avg.Charts = mean(Highest.Charting.Position))) 
  # adds average popularity and average charting position

# new_spotify$Streams <- as.numeric(sub(",", "", new_spotify$Streams))
# new_spotify$Streams

sort(new_spotify$Highest.Charting.Position)
new_spotify
ggplot(data = new_spotify, aes(x = Song.Name, y = Highest.Charting.Position, color = Popularity)) + theme(axis.text.x = element_text(angle = 30, hjust = 1)) + geom_point()




### Popularity vs. Highest Charting Position ###
#arrange(new_spotify, )
#ggplot(data = new_spotify, aes(x))


