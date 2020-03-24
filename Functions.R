add_percentage <- function(my_number, multiplier = 100, no_digits = 1) {
  percent <- round(my_number * multiplier, digits = no_digits)
  result <- paste(percent,"%",sep="")
  return(result)
}

sample_vector <- c(0.485, 1.663, 0.8654)
add_percentage(sample_vector)
add_percentage(sample_vector,10)
add_percentage(sample_vector,10,2)

my_stats <- function(values, parametric = TRUE, allow_print = FALSE) {
  if (parametric) {
    central_tendancy <- mean(values)
    spread <- sd(values)
  }
  else {
    central_tendancy <- median(values)
    spread <- mad(values)
  }
  if(allow_print & parametric) {
    result <- paste("Mean = ", spread, ",", "SD = ", spread)
    cat("Mean = ", spread, "\n", "SD = ", spread)
  }
  else if(allow_print & !parametric) {
    result <- paste("Meadian = ", spread, ",", "MAD = ", spread)
    cat("Meadian = ", spread, "\n", "MAD = ", spread)
  }
  
  if(!allow_print & parametric) {
    result <- paste("Mean = ", spread, ",", "SD = ", spread)
  }
  else if(!allow_print & !parametric) {
    result <- paste("Meadian = ", spread, ",", "MAD = ", spread)
  }
  
  return(result)
}

sample_vector <- c(0.485, 1.663, 0.8654)

result <- my_stats(sample_vector,TRUE,TRUE)

result <- my_stats(sample_vector,FALSE,TRUE)

result <- my_stats(sample_vector)
result
