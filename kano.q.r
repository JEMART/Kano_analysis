kano<-function(F,D,V){            #F,D och V = frågeområdet anordnat i kolumner för functional (F) och dysfunctional (D) frågor samt Viktigt(V)
  
  t.Find<-apply(F,1,mean,na.rm=TRUE)
  tF.mean<-mean(t.Find,na.rm=TRUE)
  tf.sd<-sd(t.Find,na.rm=TRUE)
  
  t.Dind<-apply(D,1,mean,na.rm=TRUE)
  tD.mean<-mean(t.Dind,na.rm=TRUE)
  tD.sd<-sd(t.Dind,na.rm=TRUE)
  
  t.Vind<-apply(V,1,mean,na.rm=TRUE)
  tV.mean<-mean(t.Vind,na.rm=TRUE)
  
  if(is.na(tD.mean)==FALSE){
  k1<-if(tD.mean>2 & tF.mean>2) "Key Performer"
  k2<-if(tD.mean>2 & tF.mean<2) "Must-Be" 
  k3<-if(tD.mean<2 & tF.mean>2) "Delighter" 
  k4<-if(tD.mean<2 & tF.mean<2) "Indifferent" 
  
  l<-list(k1,k2,k3,k4)
  l2<-lapply(l,length)
  
  list(category=l[[which(l2>0)]],
       Score.mean=data.frame(Functional=tF.mean,Dysfunctional=tD.mean),
       Score.sd=data.frame(Functional=tf.sd,Dysfunctional=tD.sd),
       Important=tV.mean
  )
  }else{
    list(category=NA,
         Score.mean=data.frame(Functional=tF.mean,Dysfunctional=tD.mean),
         Score.sd=data.frame(Functional=tf.sd,Dysfunctional=tD.sd),
         Important=tV.mean)
    
 }
}

kano.quest<-function(F,D,V,NT,abb,dir){
  K<-list(NULL)
  for(i in 1:length(F)){
    K[[i]]<-kano(F[[i]],D[[i]],V[[i]])
  }
  
  cats<-lapply(K,function(x)data.frame(category=x$category,Score.mean=x$Score.mean,Score.sd=x$Score.sd,Important=x$Important))
  cats<-do.call(rbind,cats)
  
  df.cats<-data.frame(cats,NT,abb)
  
  
  library(ggplot2)
  library(reshape2)
  library(RColorBrewer)
  
  setwd(dir)
  
  myPalette<-brewer.pal(9, "Set3")
  g<-ggplot(data=df.cats, aes(x=Score.mean.Dysfunctional, y=Score.mean.Functional)) +
    #geom_point(size=df.cats$Important/2,colour="black")+
    geom_point(aes(colour=df.cats$NT),size=df.cats$Important*4,alpha=0.5)+
    geom_text(data=df.cats, aes(x=Score.mean.Dysfunctional, y=Score.mean.Functional,label=as.character(abb)),size=5,hjust=0.4, vjust=0.5,alpha=0.5)+
    
    theme_bw()+theme(legend.position="none")+
    scale_y_continuous(breaks=seq(0,4,1),labels=seq(0,4,1))+
    geom_vline(xintercept=2,colour="#402536",alpha=0.6,size=1.2)+
    geom_hline(yintercept=2,colour="#402536",alpha=0.6,size=1.2)+
    theme(axis.text.x = element_text(size=12),axis.text.y = element_text(size=12),
          axis.title.x = element_text(size = 16),axis.title.y=element_text(size=16),
          panel.border = element_rect(colour = "#402536", fill=NA, size=1.2)
    )+
    xlab("")+ylab("")+
    theme(axis.text=element_blank(),
          axis.ticks=element_blank())+
    geom_text(x=3.9, y=0, label="Baskrav",colour="grey30",size=5)+
    geom_text(x=3.9, y=4.1, label="Presterare",colour="grey30",size=5)+
    geom_text(x=0.1, y=0, label="Likgiltiga",colour="grey30",size=5)+
    geom_text(x=0.1, y=4.1, label="Attraktiva",colour="grey30",size=5)+
    coord_cartesian(ylim = c(0.1, 4),xlim=c(0,4))
  
  ggsave(g, file="kano.png", width=200, height=200, units="mm",dpi=300)                        
} 