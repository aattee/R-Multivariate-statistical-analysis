a=1:10
a
a=20:10
a
c(1:10)==1:10
a%/%3
a%%3

x=-5:5
x[x<0] #0보다 작은 값만 선택
x[x<0]=0 #0보다 작은 값을 0으로 변환
x

seq(-pi,pi,1)
seq(-pi,pi,length=10)

rnorm(10,8,2.3) #평균8, 표준편차2.3인 정규분포
rnorm(20) #표준정규분ㅍ

#행렬
x=c(1:12)포 
x=matrix(x,ncol=3,byrow=T)
x

x=matrix(1,nrow=4,ncol=3)
x

matrix(1:12,ncol=3,byrow=T)[,c(1,3)] #첫 번째, 세 번째 열 선택
matrix(1:12,ncol=3,byrow=T)[c(1:4),-3] #세 번째 열 제외

#apply(x,m,fun) => 행 또는 열에 함수 적용
#solve(x) => 역행렬

#x의 전치행렬과 y 행렬의 곱
x=matrix(1:6,ncol=3,byrow=T);x
y=matrix(2,ncol=2,nrow=2)
t(x)%*%y

#x행렬의 행과 열에 대한 평균을 구할 때, apply문 이용. apply문에서 1을 행을, 2는 열을 의미
x
apply(x,1,mean) #행의 평균
apply(x,2,mean) #열의 평균
apply(x,1,sd)
apply(x,2,sd)

#Function문 : 자주 쓰이는 계산 또는 사용자가 작성한 프로그램은 function,문으로 작성하는 것이 좋음
squareF<-function(x){x*x}
squareF(4)

kor<-c(68,64,48,46,78,60,90,50,66,70)
eng<-c(70,68,46,48,84,64,92,52,68,72)
cor(kor,eng) 
plot(kor,eng) #산포도

#연산
x<-c(1,2,-2)
c1<-5
c2<--1.2
c1<-c1*x
c1
c2<-c2*x;c2
x+c(3,-1,4)