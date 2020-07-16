#'
#'  Return Nth item of a vector or Nth row of a 2-dimensional structure
#'
#'  @param x Vector, matrix, or data frame
#'  @param n Index of item or row
#'  @return Nth item of vector, or Nth row of matrix or data frame
#'
nth = function(x, n) {
  dims = dim(x)
  if (is.null(dims)) {
    x[[n]]
  } else if (length(dims) == 2) {
    x[n,]
  } else {
    stop("Cannot take Nth item of multi-dimensional structure")
  }
}
