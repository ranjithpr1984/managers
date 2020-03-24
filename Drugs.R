dos <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
drugs <- data.frame(dos, drugA, drugB)
str(drugs)
plot(drugs)

#?plot

plot(drugs$dos, type = "o", col = "Blue")
plot(drugs$dos, drugs$dos, type = "o", col = "Blue")
