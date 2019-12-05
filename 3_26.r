###고유벡터
#R에서 eigen()함수를 사용하여 고유값과 고유벡터를 구한다.

#예제2.14
A=matrix(c(4,2,-5,-3),ncol=2)
lambda=eigen(A)
lambda

lambda$values #A 행렬의 고유값
lambda$vectors #A 행렬의 고유벡터

lambda$values[[1]] #고유값1
lambda$vector[,1] #고유벡터1

lambda$value[[2]] #고유값2
lambda$vector[,2] #고유벡터2

#예제2.15
A=matrix(c(3,1,1,3),nc=2)
lambda=eigen(A)
lambda
sum(diag(A)) #trace
det(A)

crossprod(lambda$vectors) # 대칭행렬에 대한 고유벡터행렬이 직교함을 보임

daig.lambda=matrix(c(4,0,0,2),nc=2) #고유값들로 이루어진 대각행렬
daig.lambda

spec=lambda$vectors%*%daig.lambda%*%t(lambda$vectors) #스펙트럼 분해
spec
