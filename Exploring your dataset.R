getwd()
setwd("C:\\Users\\Pranav Bhatia\\Documents\\Github\\R\\5-Data-Frames")
stats <- read.csv("Demographic-Data.csv") # , stringsAsFactors = T

# ------Exploring Data------
stats
nrow(stats)
# Optional comment for verification: Imported 195 rows

ncol(stats)

head(stats) # Top 6 rows
head(stats, n = 10)

tail(stats) # Bottom 6 rows

str(stats)

summary(stats)
