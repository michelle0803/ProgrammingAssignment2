## A pair of functions that cache the inverse of a matrix


## A function that creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  invrs <- NULL
  set <- function (y) {
    x <<- y
    invrs <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invrs <<- inverse
  getinverse <- function() invrs
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## A function that computes the inverse of the special "matrix" returned by the makeCacheMatrix function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invrs <= x$getinverse()
  if(!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  matrix1 <- x$get()
  invrs <- solve(matrix1,...)
  x$setinverse(invrs)
}
