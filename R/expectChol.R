#' @title predict cholesterol with weight and smoke information
#' @export
expectChol <- function(weight, smoke){
  input <- data.frame(G1E_WGHT = weight, Q_SMK_YN = smoke)
  chol <- predict(model, input)
  chol <- round(chol, 1)
  return(unname(chol))
}
