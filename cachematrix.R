### GENERAL DESCRIPTION ########################################################
# My first function takes only a matrix as its  argument and returns the 
# same matrix,but catchs the inverse inside a list which is in the general enviroment
#,because I use "<<-" to create it, this list is labeled as "catched" and catchs 
#the inverse and the matrix.

# My second function will evaluate a matrix, and will have gave the inverse to the user
#, unless the function detects that "catched" exists on the general enviroment, in this
# case the function check if the current matrix is identical to the array inside 
# the list "catched", the function will return the inverse that have been
# saved when you use my first function to define a matrix.
################################################################################
#
#
#"makeCacheMatrix" description; This function returns the same matrix, but compute
# and catch the inverse, toghether with the original matrix, inside a list that is
# defined on the general enviromment.
makeCacheMatrix <- function(x = matrix()){
    catched <<- list(catched_matrix = x, catched_inverse = solve(x))
    return(x)
}
#"cacheSolve" description; This function checks if "catched" exists in the 
# generall enviroment, if "catched" exists is equal to true the function checks
# if the current matrix is identical to the matrix that was kept in the list 
# "catched" 
cacheSolve <- function(a = matrix()){
    if(exists("catched", inherits = TRUE)){
        if(identical(a,catched$catched_matrix)){
            message("getting cached data")
            print("the inverse is:")
            return(catched$catched_inverse)
        }
    }
    print("the inverse is:")
    solve(a)
}
##


