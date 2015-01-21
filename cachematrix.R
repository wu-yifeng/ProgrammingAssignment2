## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatri <- function(x = matrix()) {
invs <- NULL #the value of invs is NULL
set <- function(y) {
x <<- y
invs <<- NULL              #x=y, invs=NULL, x is the matrix we type at the step of makeCacheMatri()
}
get <- function() x        #assigne x to get
setinvs <- function(inverse) invs <<- inverse    #assigne inverse to invs after cached
getinvs <- function() invs
list(set = set, get = get,
setinvs = setinvs,
getinvs = getinvs)
}      # the result of makeCacheMatri is a list of "set" "get" "setinvs" and "getinvs"
# Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {    # the vaule put in cacheSolve should be the result of makeCacheMatri
invs <- x$getinvs()
if(!is.null(invs)) {
message("getting cached data")   # assigne getinvs to invs, if invs is not NNULL, show the words
return(invs)                     # and show the vaule of invs
}
data <- x$get()
invs <- solve(data, ...)         #if invs is NULL, calculate the inverse matrix
x$setinvs(invs)                  #send the vaule of invs to x, so that the invs is not NULL next time
invs                             #and show the vaule of invs
}
