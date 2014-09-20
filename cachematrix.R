## Function 'cacheSolve' computes inverse of the special 'matrix' 
## created by function 'makeCacheMatrix' and caches the result for 
## subsequent calls to get matrix inverse.

## Creates a special matrix with functions to get the matrix inverse.
makeCacheMatrix <- function(x = matrix()) {
  
  ## 'x' shall be a square numeric or complex matrix. Logical are coerced to numetic
  ## 'x' shall be invertible (no checks are made)
  
  ## makeCacheMatrix$set(x) Checks if a matrix is square, and resets its inverse to NULL
  ## makeCacheMatrix$get() Returns the matrix 'x'  
  ## makeCacheMatrix$setInverse(matInv) Sets a matrix that is the inverse of matrix 'x'
  ## makeCacheMatrix$getInverse() Returns the inverse of matrix 'x'
  
  
  

}

## Returns the inverse matrix of matrix 'x'
## If cached matrix inverse of 'x' is not NULL returns value from cache
## Else inverse matrix of 'x' is computed, chached, and then returned

cacheSolve <- function(x, ...) {
  ## Assumptions:
  ## 'x' is a square matrix
  ## 'x' is invertiable
  ## '...' and additional arguments that are passed to the 'solve(a,b,...)' function
  
  
}
