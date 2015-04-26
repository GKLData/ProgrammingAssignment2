## Put comments here that give an overall description of what your
## functions do

##The makeCacheMatrix function creates a special special "matrix" object that can cache its inverse

#    set the value of the matrix
#    get the value of the matrix
#    set the value of the inverse of the matrix
#    get the value of the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {

 	inver <- NULL
	set   <- function(y) {
		x     <<- y
		inver <<- NULL
	}
	get <- function() x
	setvalue <- function(inverse) inver <<- inverse
	getvalue <- function() inver
	list(
	set=set, 
	get=get, 
	setvalue = setvalue, 
	getvalue = getvalue)
}


## This cacheSolve function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix. If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


	cacheSolve <- function(x, ...) {
		inver <- x$getvalue()
		if(!is.null(inver)) {
		message("getting cached data.")
		return(inver)
	}
	data <- x$get()
	inver <- solve(data)
	x$setvalue(inver)
	inver
}


## x = matrix (c(7,-2,3,5), nrow=2, ncol=2, byrow = TRUE)
## get = makeCacheMatrix(x)
## get$get()

## cacheSolve(get) 
