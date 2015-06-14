## These two functions create a matrix and give me the inverse of this matrix


## The first function is a set(list) of 4 functions
##1)set Matrix makes a new Matrix and stores its value in the Main Function
##2)get Matrix simply prints the stored Matrix
##3)set Inverse make the inverse of the Matrix and store it in the Main Function
##4)get Inverse simplu prints the stored inverse

makeCacheMatrix <- function(x = matrix()) {
        s <-NULL
        setMatrix<-function (y){
                x<<-y
                s<<-null
        }
        getMatrix<-function() x
        setInverse<-function(solve) s<<-solve
        getInverse<-function()s
        list(setMatrix=setMatrix, getMatrix=getMatrix,setInverse=setInverse,getInverse=getInverse)

}

## This function gives the inverse of the Matrix, but first,
##before calculating it again, checks if it is stored in the Main Function

cacheSolve <- function(x, ...) {
        s<-x$getInverse()
        if(!is.null(s)) {
                message("getting cached matrix")
                return(s)
        }
        mymatrix<-x$getMatrix()
        s<-solve(mymatrix)
        x$setInverse(s)
        s
        
        ## Return a matrix that is the inverse of 'x'
}