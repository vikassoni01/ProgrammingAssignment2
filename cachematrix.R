## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
        set <- function(t) {
                
                x <<- t
                i <<- NULL
                       }
        
        get <- function() x
        setInv <- function(p) i <<- p
  getInv <- function() i
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInv()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setInv(i)
        i
}
