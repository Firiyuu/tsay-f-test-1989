devtools::install_github("MatthieuStigler/tsDyn/tsDyn")

library(tsDyn)

TvarMat <- c(2.9,-0.4,-0.1,-1.5, 0.2,0.3)
sim<-setar.sim(B=TvarMat,lag=2, type="simul", nthresh=1, Thresh=2, starting=c(2.8,2.2))$serie
mean(ifelse(sim>2,1,0))	#approximation of values over the threshold

#check the result
selectSETAR(sim, m=2)


##Bootstrap a TAR with two threshold (three regimes)
sun<-(sqrt(sunspot.year+1)-1)*2
setar.sim(data=sun,nthresh=2,n=500, type="boot", Thresh=c(6,9))$serie
