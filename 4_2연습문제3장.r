#(4/2)3장. 다변량 확률표본에 대한 기초
#연습문제

##3.1
#3개의 2X1 관측 행벡터로 이루어진 데이터 행렬 X를 이용하여
X=matrix(c(9,5,1,1,3,4),nc=2);X

#(a)표본평균벡터를 구하여라.
colMeans(X)

#(b)표본공분산행렬을 구하여라
cov(X)

#(c)표본상관행렬을 구하여라
cor(X)

#(d)일반화표본분산을 구하여라
det(cov(X))

#(e)총 표본분산을 구하여라
sum(diag(cov(X)))

#(f)변수를 축으로 하는 2차원 공간에 3개의 관측 벡터를 점으로 나타내어라
plot(X)


##3.2 
#다음의 표본공분산 행렬에 대해
S1<-matrix(c(1,0,0,0,1,0,0,0,1),nrow=3);S1
S2<-matrix(c(1,0.5,0.5,0.5,1,0.5,0.5,0.5,1),nrow=3);S2

#(a)S1과 S2를 이용하여 일반화표본분산을 구하고 비교하라
det(cov(S1)) #S1의 일반화표본분산
det(cov(S2)) #S2의 일반화표본분산

#(b)S1과 S2를 이용하여 총표본분산을 구하고 비교하여라
sum(diag(cov(S1))) #S1 총표본분산
sum(diag(cov(S2))) #S2 총표본분산

#(c)S1과 S2의 조건수를 구하고 비교하여라
R1=cor(S1);R1
R2=cor(S2);R2
eigen(R1)$value[1]/eigen(S1)$value[3] #S1의 조건수
eigen(R2)$value[1]/eigen(S2)$value[3] #S2의 조건수


##3.3
#3X1 확률벡터 X'=(X1,X2,X3)가 다음과 같은 모평균과 모공분산행렬을 갖는다고 한다.
mu=matrix(c(1,2,3));mu
S=matrix(c(4,2,3,2,9,2,3,2,16),nc=3);S
#다음의 선형결합 Y1=X1+X2+X3, Y2=2X1-3X2+2X3으로 구성된 Y=(Y1,Y2)'에 대해 E(Y),Cov(Y),corr(Y)를 구하여라.
#E(Y)
a=matrix(c(1,2,1,-3,1,2),nc=3);a
ey<-a%*%mu;ey
#Cov(Y)
cov_y<-a%*%S%*%t(a);cov_y
#Corr(Y)
r12<-cov_y[1,2]/sqrt(cov_y[1,1]*cov_y[2,2]);r12
corr_y<-matrix(c(r12,1,1,r12),nc=2);corr_y


