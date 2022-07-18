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
stats[3:3]
stats[3, "Birth.rate"]
stats["Angola", 3] # won't work as row's don't have any name in data frames
stats$Country.Name
stats$Internet.users
stats$Internet.users[2]
stats[, "Internet.users"] # same as stats$Internet.users
levels(as.factor(stats$Income.Group)) # or use stringsAsFactors = T

# ------Basic operations with a Data Frame------
stats[1:10,] # subsetting
stats[3:9,]
stats[c(4, 100),]
# Remember how the [] work?
stats[1, ]
is.data.frame(stats[1, ]) # unlike matrix
is.data.frame(stats[, 1]) # returns a vector
is.data.frame(stats[, 1, drop = F])
# Mathematical
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users
# Add column
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
# Recycling
stats$xyz <- 1:5
head(stats, n = 15)
stats$xyz <- 1:4
# Remove a column
head(stats)
stats$MyCalc <- NULL
stats$xyz <- NULL

# ------Filtering a Data Frame------
head(stats)
filter <- stats$Internet.users < 2
stats[filter,]

stats[stats$Birth.rate > 40,]
stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]
stats[stats$Income.Group == "High income",]
levels(stats$Income.Group)

stats[stats$Country.Name == "Malta",]
