## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invMat<-NULL
        
        setMat<-function(y){
                x<<-y
                invMat<<-NULL
        }
        getMat<-function(){
                x
        }
        setInv<-function(inverse){
                invMat<<-inverse
        }
        getInv<-function(){
                invMat
        }
        list(setMat=setMat,getMat=getMat,setInv=setInv,getInv=getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invMat<-x$getInv()
        if(!is.null(invMat)) {
                return(invMat)    
        }
        MatrixData<-x$getMat()    
        invMatrix<-solve(MatrixData, ...)            
        x$setInv(invMat)           

}
