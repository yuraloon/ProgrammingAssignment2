## makeCacheMatrix creates a special matrix which is a list
## containing a function to""
## set the value of the matrix
## get the value of the martrix
## set the value of the inverse of the matrix
## get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
    inMx <- NULL
    set <- function(y) {
      x <<- y
      inMx <<- NULL
    }
    get <- function() x
    setInverseMx <- function(inverse) inv <<- inverse
    getInverseMx <- function() inMx
    list(set=set, get=get, setInverseMx=setInverseMx, getInverseMx=getInverseMx)
}


## The following function caches the inverse of a matrix.
## Like the cachemean example and the cachmean example,
## the 1st funcion checks to see if the matrix is in cache.
## If it is already, otherwise it is calculated and set in cache.

x = rbind(c(1, -1/4), c(-1/4, 1))
inMx = makeCacheMatrix(x)

inMx$get()

## proof of success
##x = rbind(c(7,-7/8), c(-7/8, 6))
##> inMx = makeCacheMatrix(x)
##> inMx$get()
##[,1]   [,2]
##[1,]  7.000 -0.875
##[2,] -0.875  6.000
