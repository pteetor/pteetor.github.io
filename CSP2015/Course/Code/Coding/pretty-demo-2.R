#
#   Given a vector, x, return the mean of x
#   and the confidence interval for the mean.
#
#   Returns a 3-element vector with the mean,
#   lower bound, and upper bound. Any of those
#   can be NA if not defined.
#
meanCI = function(x, conf.level=0.95, na.rm=TRUE) {
    if (na.rm) {
        x = x[!is.na(x)]
    }
    if (length(x) == 0) {
        return(c(NA, NA, NA))
    }
    if (all(is.na(x))) {
        return(c(NA, NA, NA))
    }
    if (all(x == x[[1]])) {
        return(c(x[[1]], NA, NA))
    }

    ht <- t.test(x, conf.level=conf.level)
    cbind(estimate=ht$estimate,
          lowerCI=ht$conf.int[1],
          upperCI=ht$conf.int[2] )
}
