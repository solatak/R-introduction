# Data structures
cats_df <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c (2.1, 5.0, 3.2),
                   likes_strings = c(1, 0, 1))


rm(cats)


cats_df

#structure of cats dataframe 
str(cats_df)
cats_df$likes_strings
cats_df$weight +2 
# Addding numerical with inergrals
vas_df$weight + cats_df$coat
paste("My cat is ", cats_df$coat)

# Data structure
typeof(cats_df$weight)
typeof(TRUE)

typeof(cats_df$coast)
 
#Writing files
write.csv(x= cats_df, file = "cats_df.csv",
          row.names = FALSE, quote = FALSE)

# Matrix
example_mat <- matrix(0, ncol = 6, nrow = 3)
example_mat

#Dimensions
dim(example_mat)
dim(cats_df)
?dim()

# Subsetting 
head(cats_df)
cats_df[3]
cats_df$coat
str(cats_df[])
str(cats_df$coat)
cats_df[1:2,1:2]
cats_df[c(1,3),c(1,3)]

xy_var <- c(1,3)
cats_df[xy_var, xy_var]
# Creating a numerical vector 
1:10

example_mat[1:2, 4:6]

# Install packages, don't need to install it everytime so the next time just comment it out and only call the library
#install.packages("ggplot2")
library("ggplot2")

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv", 
              destfile = "gapminder_data.csv")
gapminder_df <- read.csv(file = "gapminder_data.csv")
str(gapminder_df)
dim(gapminder_df)

ggplot(data = gapminder_df,
  mapping = aes(x = gdpPercap, y = lifeExp)) +
  labs(x = "GDP per capita", y = "Life Expectancy (yrs)") +
  geom_point(alpha=0.5, aes(color = continent, size = pop)) +
  scale_x_log10() + 
  scale_y_log10() +
  geom_smooth(method = "lm")

# Plot the data 
ggplot(data = gapminder_df,
       mapping = aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(alpha = 0.5, aes(color = continent, shape = continent, size = pop/100000)) + 
  labs(x = "GDP Per Capita", y = "Life Expectancy (yrs)") +
  scale_x_log10() + 
  # run a statistical system - linear model
  geom_smooth(method = "lm") + 
  
  #Briefwork Week 3



  # Make a plot where you modify the shapes and the size of the points
  geom_point(alpha = 0.75, aes(colour = continent, shape = continent, size = pop/100000))
?geom_point()

# make multiple plots by continent
  #facet_grid(continent~.)

head(gapminder_df)
  
# Evaluating life expectancy by year
ggplot (data = gapminder_df,
        mapping = aes(x = year, y = lifeExp,
                      #grouping data
                      group = country)) +
  # add line to connect years
  geom_line(aes(color = continent)) + 
  geom_point(aes(color = continent))





# 


















# What software do I have
sessionInfo()
# good to have so you can make your files reproducible









?data.frame()



