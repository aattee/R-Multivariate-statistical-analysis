st1=c(90,80)
st2=c(80,90)
st3=c(75,80)
st4=c(70,70)
st5=c(65,80)
st=rbind(st1,st2,st3,st4)

#scatter plot  
plot(st,xlab='중간점수',ylab='기말점수',main='산점')
#adding student lable
text(st[,1],st[,2],labels=abbreviate(rownames(st)),cex=0.8,pos=1,col="blue")
#making student 1, student2 with red point
points(st[1,1],st[1,2],col="red",pch=19)
points(st[2,1],st[2,2],col="red",pch=19)

#거리비교막대그래프
dist_all=cbind(de,ds,dm)
barplot(dist_all,col="blue",names.arg=c("유클리드","표준화","마할라노비스"),
        main="Distance between st1 and st12's score")

#마할라노비스 함수
mahalanobis(trees,center,cov) #center=:분포의 평균벡터 지정, cov=:분포의 공분산행렬(pXp) 지정정


#예제
x=matrix(rnorm(100*3),ncol=3)
Sx=cov(x)
D2=mahalanobis(x,colMeans(x),Sx)

#전치행렬
a=matrix(c(2,7,1,-4,3,6),ncol=3)
a
t(a)

#두 벡터 합, 상수와 벡터 곱
x=c(3,-1,4)
y=c(1,2,-2)
z=x+y
z
c1=5
c2=-1.2
c1*y
c2*y

#R에서 백터 연산
a=c(1,-2,3)
b=c(2,2,4)
a+b
t(a)*b
t(a)%*%b
3*a

la=sqrt(t(a)%*%a);la
lb=sqrt(t(b)%*%b);lb

cos_theta=t(a)%*%b/(la*lb)
cos_theta

#예제2.4
a=matrix(c(3,1,-1,5,2,4),ncol=3)
b=matrix(c(1,-1,2,3,3,5),ncol=3)
a+b
t(b)
a%*%t(b)

