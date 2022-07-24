# CREATING DATAFRAMES

mydf = data.frame(Countries_2012_Dataset,
                  Codes_2012_Dataset,
                  Regions_2012_Dataset)

head(mydf)
colnames(mydf) <- c("Country", "Code", "Region")
head(mydf)

rm(mydf)

mydf = data.frame(Country = Countries_2012_Dataset,
                  Code = Codes_2012_Dataset,
                  Region = Regions_2012_Dataset)

head(mydf)
tail(mydf)
summary(mydf)

# MERGING DATAFRAMES

head(stats)
head(mydf)

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(merged)

merged$Country <- NULL
str(merged)
tail(merged)

# VISUALIZING
qplot(data = merged,
      x = Internet.users,
      y = Birth.rate,
      color = Region)

# 1. Shapes
qplot(
  data = merged,
  x = Internet.users,
  y = Birth.rate,
  color = Region,
  size = I(5),
  shape = I(23)
)

# 2. Transparency
qplot(
  data = merged,
  x = Internet.users,
  y = Birth.rate,
  color = Region,
  size = I(5),
  shape = I(19),
  alpha=I(0.6)
)

# Title
qplot(
  data = merged,
  x = Internet.users,
  y = Birth.rate,
  color = Region,
  size = I(5),
  shape = I(19),
  alpha=I(0.6),
  main = "Birth Rate vs Internet Users" 
)
