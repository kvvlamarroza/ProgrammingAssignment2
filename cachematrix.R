## Matrix Inversion
## to solve a system of linear equation

## obtaining cache for matrix inversion

makeCacheMatrix <- function(x = matrix()) {
y <- NULL
        put <- function (c) {
                b <<- c
                y <<- NULL
}
obtain <- function()b
        putinverse <- function(inverse) y <<- inverse
        obtaininverse <- function() y
        list(put = put, obtain = obtain,
             putinverse = putinverse
             obtaininverse = obtaininverse)
}

## the code written above is use to calculate the data and sets of values for matrix inversion

cacheSolve <- function(b, ...) {
        y <- b$obtaininverse()
        if (!is.null(y)) {
                message("preparing cached data")
                return(y)
}
data <- b$obtain()
        y <- solve(data, ...)
        b$putinverse(y)
        y
}
