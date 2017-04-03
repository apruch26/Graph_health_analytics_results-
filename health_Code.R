IC<-c(0,1)
percentage<-c(0.7344013,0.2655987)
data<-data.frame(IC,percentage)

barplot(data,main="Population who Recieved an IC",xlab="IC")

c <- ggplot(data, aes(x=IC,y=percentage))
c+geom_bar()
            
data<-data.frame(IC=c("Didn't receive an IC","Received an IC"),percentage=c(0.7344013,0.2655987))

ggplot(data, aes(x=IC,y = percentage))+
  geom_bar(stat = "identity")+
  geom_text(aes(label=percentage),vjust=0)+
  ggtitle("Population of Interest")+
  theme(plot.title = element_text(lineheight=.7, face="bold",hjust = 0.5))+
  scale_y_continuous(limits=c(0,1))

data_race<-data.frame(race=c("White","Black","Hispanic","Other"),percentage=c(0.266,0.250,0.283,0.275))

ggplot(data_race, aes(x=race,y = percentage))+
  geom_bar(stat = "identity")+
  geom_text(aes(label=percentage),vjust=0)+
  ggtitle("Pop of Interest that Received an IC by Race")+
  theme(plot.title = element_text(lineheight=.7, face="bold",hjust = 0.5))+
  scale_y_continuous(limits=c(0,1))

data_pay<-data.frame(pay=c('Private','M-care','M-caid','Workers','Self-Pay','No Charge','Other','Don\'t know'),percentage=c(0.283,0.233,0.284,0.140,0.193,0.271,0.243,0.334))

ggplot(data_pay, aes(x=pay,y = percentage))+
  geom_bar(stat = "identity")+
  geom_text(aes(label=percentage),vjust=0)+
  ggtitle("Pop of Interest that Received an IC by Pay Method")+
  theme(plot.title = element_text(lineheight=.7, face="bold",hjust = 0.5))+
  scale_y_continuous(limits=c(0,1))

data_year<-data.frame(year=c(2005,2006,2007,2008,2009,2010),percentage=c(0.231,0.253,0.270,0.290,0.246,0.302))

ggplot(data_year,aes(x=year,y=percentage))+
  geom_line()+
  geom_point()+
  geom_text(aes(label=percentage),vjust=3)+
  ggtitle("Pop of Interest that Received an IC by Year")+
  theme(plot.title = element_text(lineheight=.7,hjust = 0.5))+
  scale_y_continuous(limits=c(0,1))
