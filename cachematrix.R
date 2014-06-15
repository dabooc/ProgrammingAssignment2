## Allow to cache the invertion of a matrix

## Create a specific matrix object with a fied containing the inverted matrix if already computed

makeCacheMatrix <- function(x = matrix()) {
  cachedInvertion = null

  ## retrieve the original matrix
  get <- function() {
    x
  }
  
  ## cache the inverted matrix
  setCachedInvertion(inv) {
    cachedInvertion <<- inv
  }
  
  ## retrieve the cached value
  getCachedInvertion() {
    cachedInvertion
  }
  
  list(get = get,
       setCachedInvertion = setCachedInvertion,
       getCachedInvertion = getCachedInvertion)
}


## Return the invert of a matrix. Takes advantage of caching to improve the process

cacheSolve <- function(x, ...) {
        ## check if the invert has already been computed
        cached <- x$getCachedInvertion()
        if (is.null(cached)) {
            ## no, we need to compute it
            cached <- solve(x$get())
            ## and we cache it in the object
            x$setCachedInvertion(cached)
        }
        cached
}
