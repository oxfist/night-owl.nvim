library(ggplot2)

sqrt_result <- base::sqrt(16)
print(sqrt_result)

calculate_area <- function(radius) {
  pi <- 3.14
  return(pi * radius^2) # Using arithmetic operators
}

check_number <- function(num) {
  if (num > 0) {
    return("Positive")
  } else if (num < 0) {
    return("Negative")
  } else {
    return("Zero")
  }
}

function(num) {
  if (num > 0) {
    return("Positive")
  } else if (num < 0) {
    return("Negative")
  } else {
    return("Zero")
  }
}

for (i in 1:5) {
  print(i)
}

while(count < 10) {
  print(count)
  count <- count + 1
}

v <- switch(x, "a"="apple", "b"="banana", "c"="cherry")
v <- NA | TRUE

squares <- sapply(1:10, function(x) x^2)
student <- list("name" = "John", "age" = 20, "grades" = c(85, 90, 78, 92, 88))
penguins[1, 1]

print(student$name)
cor.test(student$grades, student$age)

tryCatch(print(5 / 0), error = function(e) print("Cannot divide by zero"))

Animal <- setRefClass("Animal",
  fields = list(name = "character"),
  methods = list(
    initialize = function(name) {
      .self$name <- name
    },
    speak = function() {
      return(paste(.self$name, "says hello!"))
    }
  )
)

dog <- Animal$new("Rex")
print(dog$speak())

print(calculate_area(5))
print(check_number(-10))
