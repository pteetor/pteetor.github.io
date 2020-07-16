#'
#'  Return first non-NULL, non-NA argument
#'  
#'  @param ... Just arguments
#'  @return First nont-NULL, non-NA value
#'  
coalesce = function(...) {
    for (x in list(...)) {
        if (!is.null(x) && !is.na(x)) return(x)
    }
    NULL
}

