#'
#'  Sort a data frame according to one column
#'
#'  @param dfrm A data frame
#'  @param colnm The name of a column in the data frame
#'  @return Same data frame, but sorted according to the column
#'
sortBy = function(dfrm, colnm) {
    ord = order(dfrm[,colnm])
    dfrm[ord,]
}
