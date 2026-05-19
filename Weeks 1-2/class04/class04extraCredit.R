source("http://thegrantlab.org/misc/cdc.R")
height_m <- cdc$height * 0.0254
weight_kg <- cdc$weight * 0.45359237
bmi <- (weight_kg)/(height_m^2)
obese_and_male <- sum((bmi >= 30) & (cdc$gender=="m"))
obese_and_male
