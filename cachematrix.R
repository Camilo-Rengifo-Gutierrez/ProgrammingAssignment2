## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(y){
    x <<- y
    n <<- NULL
  }
  get <- function() x
  setinv <- function(solve) n <<- solve
  getinv <- function() n
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  n <- x$getinv()
  if(!is.null(n)){
    message("getting cached data")
    return(n)
  }
  matrix <- x$get()
  n <- solve(matrix, ...)
  n
}
