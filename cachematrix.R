## programming assignment 2 coursera R programming
## peer graded
## Sets then gets a matrix in a cache

makeCacheMatrix <- function(x = matrix()) {
		inv <- NULL
		set <- function(y)	{
			x <<- y
			inv <<- NULL
		}
	get <- function() x
	setInverse <- function(inverse)	inv <<- inverse	
	getInverse <- function() inv
	list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## solve the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getInverse()
		if(!is.null(inv))	{
			message("retrieving cache data")
			return(inv)
		}
	matr <- x$get()
	inv <- solve(matr, ...)
	x$setInverse(inv)
	inv
	
}
