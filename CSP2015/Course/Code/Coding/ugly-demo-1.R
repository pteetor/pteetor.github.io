coalesce = function(...) {
for (x in list(...)) {
if (!is.null(x) && !is.na(x)) return(x)
} NULL
}

