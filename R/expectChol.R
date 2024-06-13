#' @title predict cholesterol with weight and smoke information
#' @export
expectChol <- function(weight, smoke){
  smoke <- validSmoke(smoke)
  input <- data.frame(G1E_WGHT = weight, Q_SMK_YN = smoke)
  chol <- predict(model, input)
  chol <- round(chol, 1)
  return(unname(chol))
}

validSmoke <- function(smoke){
  if(!is.factor(smoke)) return(factor(smoke))
  return(smoke)
}
