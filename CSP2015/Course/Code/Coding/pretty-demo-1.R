#
#   Return the first argument which is
#   neither NULL nor NA.
#
coalesce = function(...) {
    for (x in list(...)) {
        if (!is.null(x) && !is.na(x)) {
            return(x)
        }
    }
    return(NULL)
}

