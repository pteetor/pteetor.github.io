# Like setNames, but for colnames
setColnames = function(x, names) {
    colnames(x) <- names
    return(x)
}
