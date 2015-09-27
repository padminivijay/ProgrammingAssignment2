

## Put comments here that give an overall description of what your
## functions do
## the matrix inverse is cached in inv variable
## based on the reset flag, cache can be cleared or re-used as needed

inv <- NULL

## Write a short comment describing this function
## takes two arguments, matrix and flag is cache is to be reset
makeCacheMatrix <- function(mat = matrix(), resetcache=0) {
    
  if( resetcache == 1){
    message("resetting cached value")
    inv <<- solve(mat)
    inv
  } else {
    message("getting value from cache")
    if( is.null(inv)){
      message("cache is null, computing inverse")
      inv <<- solve(mat)
      inv
    } else {
      message("cache is not null, getting from cache")
      inv
    }
  }
}


## Write a short comment describing this function
## Takes two arguments  matrix and cache reset flag
## Some example usage 
## cacheSolve(m,0)
## cacheSolve(m,1)
## cacheSolve(m)
cacheSolve <- function(x, resetcache=0) {
  
        ## Return a matrix that is the inverse of 'x'
        makeCacheMatrix(x,resetcache)
}





