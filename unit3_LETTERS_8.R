set.seed(123)
random_letters <- sample(LETTERS, 20, replace = TRUE)
letter_factor <- factor(random_letters)
print(levels(letter_factor)[1:5])