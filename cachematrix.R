## The inversematrix of a given matrix will be calculated and 
## cached. The user is provided with functions to get a matrix 
## and get the inversematrix of a matrix, he has provided.

## Provides functions to get, set, get the inversematrix and set the
## inversematrix of a given matrix.
## This sourcecode is an edited version of the sourcecode example 
## of the programming assignment 2 instructions provided by the 
## authors of the Coursera course R Programming. 

makeCacheMatrix <- function(x = matrix()) {  
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)  
}


## Looks if the inversematrix of a given matrix was already 
## calculated. If yes, it returns the cached data,
## if not, it calculates the inversematrix.
## This sourcecode is an edited version of the sourcecode example 
## of the programming assignment 2 instructions provided by the 
## authors of the Coursera course R Programming. 

cacheSolve <- function(x, ...) {
        
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
    i
}
