myFract <- function (n,m=1000,days=365) {
  B=sample(days, m*n, replace=TRUE)  # sample n*m birthdays
  dim(B)=c(m,n)                      # convert to matrix
  x=apply(B,1,anyDuplicated)         # return first duplicated index or zero if none
  fract=sum(x>0)/m                   # fraction of entries in x bigger than zeros
  return(fract)
}
