# Test driver
test<-function(){
  z<-makeCacheMatrix(matrix(c(1,2,3,5),nrow=2,ncol=2))
  print(cacheSolve(z))
  print(cacheSolve(z))
  print(cacheSolve(z))
  w1<-makeCacheMatrix(matrix(c(1,2,3,4,5,5,4,8,9),nrow=3,ncol=3))
  print(cacheSolve(w1))
  print(cacheSolve(w1))
  w1<-makeCacheMatrix(matrix(c(1,2,3,4,5,5,4,8,9),nrow=3,ncol=3))
  print(cacheSolve(w1))
}
