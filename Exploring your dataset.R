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

# ------Using the $ sign------
stats
head(stats)
stats[3: 3]
stats[3, "Birth.rate"]
stats["Angola", 3] # won't work as row's don't have any name in data frames
stats$Country.Name
stats$Internet.users
stats$Internet.users[2]
stats[, "Internet.users"] # same as stats$Internet.users
levels(as.factor(stats$Income.Group)) # or use stringsAsFactors = T












