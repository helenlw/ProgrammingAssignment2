
## Pass a matrix and return the inverse matrix.  Determine if the answer is 
## already in the cache, if not do the calcuation using the solve function.

## Make a vector to hold the results of the solve funtion in memory.

makeCacheMatrix <- function(x = matrix()) {
  
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setSolve <- function(solve) m <<- solve
  getSolve <- function() m
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
  

  
}


## Determine if solve has already been done on the matrix, if not perform the solve.

cacheSolve <- function(x, ...) {
  
  m <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setSolve(m)
  m
  

        ## Return a matrix that is the inverse of 'x'
}
