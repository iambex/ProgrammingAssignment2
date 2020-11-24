## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     
     #Setting the matrix
     i<-NULL
     set<-function(m){
          x<-m
          i<-NULL
     }
     
     #Getting the matrix
     get<-function(){
          #Return matrix x
          x
     }
     
     #Setting the Inverse
     setInverse-function(inverse){
          i<-inverse
     }
     
     #Getting the inverse
     getInverse<-function(){
          i
     }
     
     #List of methods
     list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
}


#Another function that computes the inverse from makeCacheMatrix
cacheSolve<-function(x,...){
     
     i<-x$getInverse()
     
     if(!is.null(i)){
          message("getting cached data")
          return(i)
     }
     
     #Get the matrix
     newMatrix<-x$get()
     
     #Calculate the inverse
     inv<-solve(newMatrix)
     
     #Set the Inverse to the matrix
     x$setInverse(i)
     
     #Return the matrix
     i
}
