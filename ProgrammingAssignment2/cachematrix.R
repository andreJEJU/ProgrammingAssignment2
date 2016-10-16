## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrixInverse <- NULL
  matrixInverse <- cacheSolve()
  matrixInverse
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(x)) {
    matrixInverse <- solve(x)
  }
}
