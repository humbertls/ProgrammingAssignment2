## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##Creates three functions and returns a list which contains them.
  m <- NULL
  set <- function(z){
    x <<- z
    m <- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set,
       get = get, 
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setInverse(m)
  m
}

##Example
m2 <- matrix(c(2, 5, 1,3), nrow = 2, ncol = 2, byrow = T)
m <- makeCacheMatrix(matriz2)
cacheSolve(m)
