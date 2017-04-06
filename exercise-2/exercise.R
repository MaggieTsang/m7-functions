# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  sentence <- paste("The difference in lengths is ", abs(length(v1) - length(v2)))
  return(sentence)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3,4), c(1,2,3,4,5,6,7))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  if(length(v1) > length(v2)){
    return("Your first vector is longer by " + (length(v1) - length(v2)) + "elements")
  } else {
    return("Your second vector is longer by " + (length(v1) - length(v2)) + "elements")
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(10,14)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  if(length(v1) > length(v2)){
    return(v1)
  } else {
    return(v2)
  }
}