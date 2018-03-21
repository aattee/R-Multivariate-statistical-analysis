#행렬의 결정식
a=matrix(c(1,-3,2,5),ncol=2)
det(a) 
det(matrix(c(1,0,1,2,3,5,1,4,6),ncol=3))
#역행렬
library(MASS)
a=matrix(c(1,-3,2,5),ncol=2)
ginv(a)
round(ginv(a),digits=3) #소숫점 반올림

#직교행렬
a=matrix(c(sqrt(1/2),sqrt(1/2),-sqrt(1/2),sqrt(1/2)),ncol=2)
t(a)%*%a #t(a)%*%a = I 이면 직교행렬이다.