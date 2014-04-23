## these two functions cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
                                                m<-NULL                            ##crate a empty vector
                                                set<- function (y){
                                                        x <<- y
                                                        m <<- NULL
                                                }
                                                get <- funciton ()x
                                                setinverse <- function(inverse) m<<-inverse ##set the inverse into the variable
                                                getinverse <- function () m                  ## get the inverse and generate the list
                                                list (set = set, get= get,
                                                        setinverse=setinverse,
                                                        getinverse=getinverse)
                                        }


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
                                        m <- x$getinverse()
                                        if (is.null(m)) {                                      ##check if the matrix is already calcuated 
                                                        message ("getting cached data")         ## if it does, print the message and take the data from cache
                                                        return (m)
                                                        }
                                                        data <-x$get()
                                                        m <- solve(data, ...)                   ## if not, calculate the inverse and show it
                                                        x$setinverse(m)
                                                        m
        ## Return a matrix that is the inverse of 'x'
}
