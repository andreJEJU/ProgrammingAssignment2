makeCacheMatrix <- function (x=matrix()){
  
                matrixInverse <- NULL
                
                cacheSolve <- function (){
                          if(!is.null(x)) {
                             matrixInverse <- solve(x)
                          }
                }
                matrixInverse <- cacheSolve()
                matrixInverse

}
