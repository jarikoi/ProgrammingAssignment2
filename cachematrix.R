## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Submission by Jari Koister [jari@eightcut.com]


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  # NOT SURE ABOUT NEXT LINE
  setinverse <- function(x) m <<- x
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

#PRE: x is valid matrix, gmat is not null
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached matrix data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}


# the changes functions checks if the matrix is different from
# the one we have the calculates inverse for.
# Returns FALSE is not changes and TRUE if changed
notchanged<-function(x){
  # Check if matrix changems, i.e x is different from gmat.
  return(identical(x,gmat))
}
