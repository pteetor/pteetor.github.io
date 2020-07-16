#'
#'  Test for non-NULL
#'  
#'  Return TRUE if argument is not NULL, FALSE otherwise
#'  
#'  @param x Any R object
#'  @return Logical value
#'  @examples
#'  non.null(3)
#'  non.null(NULL)
#'  non.null(c())
#'  
non.null = function(x) !is.null(x)

