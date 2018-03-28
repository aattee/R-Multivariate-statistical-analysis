## 연습문제 2.3

a=matrix(c(2,-1,-1,2),nrow=2); a

#(a) 행벡터를 쓰고, 2차원 좌표평면에 나타내어라
a[1,] #1행
a[2,] #2행

#(b) 열벡터를 쓰고, 2차원 촤표평면에 나차내어라
a[,1] #1열
a[,2] #2열

#(c) rank(A)를 구하여라.
#rank(A)=2

#(d) A의 고유값과 고유벡터를 구하여라
eigen(a)$values #고유값
eigen(a)$vectors #고유벡터

#(e) A의 역행렬을 구하라
solve(a)

#(f) A를 스펙트럼분해로 표현하여라.
V=matrix(c(3,0,0,1),nc=2);V #고유값들로만 이루어진 대각행렬
P=eigen(a)$vectors #단위 고유벡터
P%*%V%*%t(P) #A의 스펙트럼 분해로 A 행렬과 같은 행렬이 나온다.

#(g) A역행렬의 고유값과 고유벡터를 구하여라
eigen(solve(a))$values #고유값 
eigen(solve(a))$vectors #고유벡터

#(h) A는 양정치행렬인가?
eigen(a)$values #고유값이 모두 양수이므로 양정치행렬이다.

#(i) A'A를 구하여라
t(a)%*%a

#(j) A'A의 고유값과 고유벡터를 구하여라
eigen(t(a)%*%a)$values #고유값
eigen(t(a)%*%a)$vectors #고유벡터

#(k) A'A의 역행렬을 구하여라  
solve(t(a)%*%a)

#(l) A^2을 구하여라
a%*%a

#(m) A^2의 고유값과 고유벡터를 구하여라
eigen(a%*%a)$values #고유값
eigen(a%*%a)$vectors #고유벡터



## 연습문제 2.6

a=matrix(c(3,4,3,4,8,6,3,6,9),nc=3);a

#(a) 고유값과 고유벡터를 구하여라
eigen(a)$values #고유값
eigen(a)$vectors #고유벡터

#(b)tr(A)를 구하고 고유값들의 합과 같은지 확인해 보아라.
sum(diag(a)) #tr(A)=20 
sum(eigen(a)$values) #고유값들의 합=20 -> tr(A)와 같다.

#(c) |A|를 구하고 고유값들의 곱과 같은지 확인해 보아라.
det(a) #|A|=36
eigen(a)$values[1]*eigen(a)$values[2]*eigen(a)$values[3] #고유값들의 곱=36 -> |A|와 같다.

#(d)A를 스펙트럼 분해로 표현하여라.
V<-matrix(c(eigen(a)$values[1],0,0,0,eigen(a)$values[2],0,0,0,eigen(a)$values[3]),nc=3);V
#고유값들로만 이루어진 대각 행렬
P<-eigen(a)$vector #고유벡터
P%*%V%*%t(P) #A의 스펙트럼 분해로 A와 같은 행렬이 나온다. 