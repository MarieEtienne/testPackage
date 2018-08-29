#'  estimate coefficients of a linear model
#'
#' \code{estimates_lm} micmics coef function but with way more complicated approach
#'
#' @param y response variable
#' @param x design matrix
#' @return a vector of estimated coefficient for the linear regression
#' @seealso \code{\link{lm}} deprecated
#' @example
#'
#' @export

estimates_lm <- function(y, x) {
  res <- lm(y~x)
  return( coef(res))
}


