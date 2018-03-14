#[나이,월수입] 산점도 그리기 : 남녀별 구분
plot(age,salary,type="n")
points(age[sex==1],salary[sex==1],pch="M",col="BLUE")
points(age[sex==2],salary[sex==2],pch="F",col="RED")
title("나이, 월수입 산점도 : 남녀별 구분")

#tree 데이터->기본적인 통계량과 그래프
tree<-read.csv("C://data/tree.csv",header=T)
str(tree) #자료구조
summary(tree)
plot(tree) #산점도 그림
cork<-tree[,2:5] #N E S W변수만 선택
cork
plot(cork)
m=colMeans(cork) #평균
m
cv=cov(cork) #공분산
cv
cr=cor(cork) #상관관계
cr

library(lattice)
parallel(tree,main="parallel graph") #parallel 그림

stars(cork,labels=tree[,1],main="star graph") #star 그림

cloud(N~E*W,data=cork) #3차원 산점도 그림

library(aplpack)
faces(cork,main="face plot for cork",face.typ=0) #face plot 그림
faces(cork,main="face plot for cork",face.typ=1) #color
faces(cork,main="face plot for cork",face.typ=2) #산타그림
