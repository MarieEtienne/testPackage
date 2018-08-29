test_that("The length of estimates(y,x) is of length ncol(x)+1", {
  testthat::expect_equal(length(estimates_lm(y=rnorm(10), x=matrix(rnorm(10*3), ncol=3))), 4)
})


test_that("The result on the iris dataset is as expected", {
  testthat::expect_equal(as.numeric(estimates_lm(y=iris$Sepal.Length, x=cbind(iris$Sepal.Width, iris$Petal.Length))),
                         as.numeric(coef(lm(Sepal.Length~Sepal.Width+Petal.Length, data=iris))))
})

test_that("The result on the iris dataset is as expected", {
  testthat::expect_equal(as.numeric(estimates_lm(y=iris$Sepal.Length, x=cbind(iris$Sepal.Width, iris$Petal.Length))),
                         as.numeric(coef(lm(Sepal.Length~Sepal.Width data=iris))))
})
