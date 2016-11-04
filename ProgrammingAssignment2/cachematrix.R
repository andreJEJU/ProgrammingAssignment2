## Put comments here that give an overall description of what your
## functions do

## This function create a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  matrixInverse <- NULL

  set <- function(y) {
    x <<- y
    matrixInverse <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) matrixInverse <<- inverse 
  getInverse <- function() matrixInverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## This function return a matrix that is inverse of 'x'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
        matrixInverse <- x$getinverse()
    
        if(!is.null(matrixInverse)) {
              message("getting cached matrix inverse")
              return(matrixInverse)
         }
  
        matrixInverse <- x$get()
  
        dimension <- dim(matrixInverse)
  
        if(dimension[1]==dimension[2]){
              matrixInverse <- solve(matrixInverse)
              return(matrixInverse)
        }else{
          message("This matrix is not square so the inverse can't be calculated")
        }
  
}
