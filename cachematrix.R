## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inve) inv <<- inve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  # retrieve solve value 
  v <- x$getinv()
  
  # return cached solve if not null
  if(!is.null(v)) {
    message("getting cached data")
    return(v)
  }
  
  # othewise calculate inverse and cache
  data <- x$get()
  v <- solve(data, ...)
  x$setinv(v)
  
  
  v  
  

  
}
