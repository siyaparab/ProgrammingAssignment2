## Put comments here that give an overall description of what 
## your functions do

## Write a short comment describing this function

##the function below creates a list containing a function to 
##1: set the value of matrix
##2: get the value of matrix
##3: set the value of inverse of matrix
##4: get the value of inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## Write a short comment describing this function

##this functions assumes that the matrix is alway invertible.
##it thus returns the inverse of the matrix.
##it checks first if the inverse has been already computed
##if yes then gets the results and skips the computation else ##computes inverse by setting the value in the cache via ##setmatrix function

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}