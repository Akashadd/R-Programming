data(ChickWeight)
std_dev_weight <- sd(ChickWeight$weight)
num_male <- sum(ChickWeight$Diet == 1) # Assuming Diet 1 is male, replace if different
num_female <- sum(ChickWeight$Diet == 2) # Assuming Diet 2 is female, replace if different
heaviest_chicken <- ChickWeight[which.max(ChickWeight$weight), ]
chick_count_by_age <- table(ChickWeight$Time)