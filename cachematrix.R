## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function() x
        setInvmatrix<-function(solve) m<<-solve
        getInvmatrix<-function() m
        list(set=set,get=get,
        setInvmatrix=setInvmatrix,
        getInvmatrix=getInvmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       m<-x$getInvmatrix()
        if(!is.null(m)){"getting cashe data"
                return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setInvmatrix(m)
        m
}
