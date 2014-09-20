## Function 'cacheSolve' computes inverse of the special 'matrix' 
## created by function 'makeCacheMatrix' and caches the result for 
## subsequent calls to get matrix inverse.

## Creates a special 'matrix' that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  
  ## 'x' shall be a square numeric or complex matrix. Logical are coerced to numetic
  ## 'x' shall be invertible (no checks are made)
  
  ## makeCacheMatrix$set(x) Checks if a matrix is square, and resets its inverse to NULL
  ## makeCacheMatrix$get() Returns the matrix 'x'  
  ## makeCacheMatrix$setInverse(matInv) Sets a matrix that is the inverse of matrix 'x'
  ## makeCacheMatrix$getInverse() Returns the inverse of matrix 'x'
  
  matInverse <- NULL
  
  if(!is.matrix(x) || nrow(x)!=ncol(x) || !is.numeric(x) ){
    stop('x must be a square numeric matrix')
  }
  
  set <- function(x){
    x <<- mat
    matInverse <<- NULL
  }
  
  get <- function(){
    x
  }
  
  setInverse <- function(matInv){
    matInverse <<- matInv
  }
  
  getInverse <- function(){
    matInverse
  }
  
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)

}

## `cacheSolve`: This function computes the inverse of the special
## "matrix" returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then
## `cacheSolve` should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  ## Returns the inverse matrix of matrix 'x'
  ## Assumptions:
  ## 'x' is a square matrix
  ## 'x' is invertiable
  ## '...' and additional arguments that are passed to the 'solve(a,b,...)' function
  
  matInv <- x$getInverse()
  
  if(!is.null(matInv)){
    message("Returning cached inverse matrix of 'x'")
    return(matInv)
  }
  ## else
  message("Computing inverse matrix of 'x' and caching the result")
  data <- x$get()
  matInv <- solve(data, ...)
  x$setInverse(matInv)
  matInv
  
}
