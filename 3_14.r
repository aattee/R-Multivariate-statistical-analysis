st1=c(90,80)
st2=c(80,90)
st3=c(75,80)
st4=c(70,70)
st5=c(65,80)
st=rbind(st1,st2,st3,st4)

cor(st) 
cov(st) #공분산 행렬

de=dist(st[c(1,2),],method='euclidean') #1번과 2번간의 유클리드 거리
de

S=cov(st)
D=rbind(c(S[1,1],0),
        c(0,S[2,2]))
ds=t(st[1,]-st[2,])%*%solve(D)%*%(st[1,]-st[2,])
sqrt(ds)  #1번과 2번간의 표준화 거리

dm=t(st[1,]-st[2,])%*%solve(S)%*%(st[1,]-st[2,])
sqrt(dm)   #1번과 2번간의 마할라노비스 거리
