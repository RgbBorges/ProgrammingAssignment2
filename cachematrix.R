#Avaliação: Armazenando a inversa de uma matriz
#makeCacheMatrix: Esta função cria um objeto especial ("matrix") que poderá armazenar a sua inversa.
# This function create a special object ("matrix") that can cache the inverse
#Rgb - Nov/2018

makeCacheMatrix <- function(x = matrix()) {
    
	inverseMatrix <- NULL
	#Set - armazena uma matriz nova sem inversa
	set <- function(y) {
		x <<- y
		inverseMatrix <<- NULL
	}
	
	#Get - retorna a matriz
	get <- function() {
		x
	}
	
	#Set inverse - armazena a uma matriz inversa
	setinverse <- function (invMatr) {
		inverseMatrix <<- invMatr
		
	}
	
	#Get inverse - retorna a matriz inversa
	
	getinverse <- function () {
		inverseMatrix
	
	}
 
	list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


#Função para calcular a inversa de uma matriz
#Considera-se que a matriz seja sempre inversível
#This function calculate the inverse matrix
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
	inverseMatrix <- x$getinverse()
	
	if(!is.null(inverseMatrix)) {
				##not needed new calculate
                message("getting cached data")
                return(inverseMatrix)
        }
	matrixInvertible <- x$get()
	inverseMatrix <- solve(matrixInvertible)
	x$setinverse(inverseMatrix)
	inverseMatrix
}
