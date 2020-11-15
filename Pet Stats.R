pets <- read_excel("pets/Prod/pets_pivot.xls")

rentals <- pets$percent_rentals
total_pets <-pets$total_animals
percent_cats <- pets$percent_cats
percent_dogs <- pets$percent_dogs


hist(rentals, main="Histogram of Rental Percentages", xlab="Percent Rentals in a ZIP", 
     col = 'skyblue3', breaks=10)
hist(total_pets, main="Histogram of Total Pet Licenses", xlab="Total Pets in a ZIP",  
     breaks=10)
hist(percent_cats, main="Histogram of Percent Cats", xlab="Percent Cats in a ZIP")
hist(percent_dogs, main="Histogram of Percent Dogs", xlab="Percent Dogs in a ZIP")

plot(rentals, total_pets)
plot(rentals, percent_cats)
plot(rentals, percent_dogs)


cor(rentals, total_pets)
myvars <- c(rentals, total_pets, percent_cats)

cor(pets[, myvars])
