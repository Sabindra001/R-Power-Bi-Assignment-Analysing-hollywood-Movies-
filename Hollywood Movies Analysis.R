
# Install the tidyverse package which includes a collection of R packages commonly used for data science tasks
install.packages("tidyverse")

# Load the tidyverse package
library(tidyverse)
library(ggplot)

# Install ggplot2 package
install.packages("ggplot2")

# Load ggplot2 package
library(ggplot2)

# Load the dataset from the provided URL into the dataframe 'df'
df <- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")

# View the contents of the dataframe 'df' in an interactive window
View(df)

# Check the structure and data types of the dataframe 'df'
str(df)

# Check for missing values in each column of the dataframe 'df'
colSums(is.na(df))


# Drop rows with missing values from the dataframe 'df'
df <- na.omit(df)

# Check for missing values in each column of the dataframe 'df'
colSums(is.na(df))

# Display summary statistics for the dataframe 'df1'
summary(df)

# Scatterplot to visualize the relationship between Lead Studio and Rotten Tomatoes ratings
ggplot(df, aes(x = Lead.Studio, y = Rotten.Tomatoes..)) +
  geom_point() +
  scale_y_continuous(labels = scales::comma) +
  coord_cartesian(ylim = c(0, 110)) +
  theme(axis.text.x = element_text(angle = 90))

# Bar chart to visualize the distribution of movies across different years
ggplot(df, aes(x=Year)) + geom_bar()

# Export the cleaned dataframe df to a CSV file named "clean_df.csv"
write.csv(df, "clean_df.csv")



