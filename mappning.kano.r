source("C:\\Users\\Jesper\\Documents\\JEM\\Skript\\Undersökningar\\kano.q.r")

raw<-read.csv("C:\\Users\\Jesper\\Documents\\JEM\\Koncept\\Kano\\Data\\data.csv",sep=";",dec=",")
raw2<-raw
colnames(raw2)<-c("Kön","Sysselsättning","Utbildning","Tid_tränat","Gruppträning","PT",
                  "Baskrav_text","Key_Perfomer_Text","Delighter_text",
                  "Stämning.bra","Gemenskap.bra","Stämning.dålig","Gemenskap.dålig","Stämning.viktigt","Gemenskap.viktigt",
                  "Kontakt_PT.bra","Kompetens_PT.bra","Behov_PT.bra","Hjälp_PT.bra","Kontakt_PT.dålig",
                  "Kompetens_PT.dålig","Behov_PT.dålig","Hjälp_PT.dålig",
                  "Kontakt_PT.Viktigt","Kompetens_PT.Viktigt","Behov_PT.Viktigt","Hjälp_PT.Viktigt",
                  "Tider.bra","Instruktörer.bra","Utbud_pass.bra",
                  "Tider.dålig","Instruktörer.dålig","Utbud_pass.dålig",
                  "Tider.Viktigt","Instruktörer.Viktigt","Utbud_pass.Viktigt",
                  "Hjälp_mål.bra","Hjälp_nå_mål.bra",
                  "Hjälp_mål.dålig","Hjälp_nå_mål.dålig",
                  "Hjälp_mål.Viktigt","Hjälp_nå_mål.Viktigt",
                  "Välkommen.bra","Kontakt_personal.bra","Kundservice.bra","Kompetens.bra",
                  "Välkommen.dålig","Kontakt_personal.dålig","Kundservice.dålig","Kompetens.dålig",
                  "Välkommen.Viktigt","Kontakt_personal.Viktigt","Kundservice.Viktigt","Kompetens.Viktigt",
                  "Mängd_info.bra","Relevans_info.bra","Feedback.bra","Hemsida.bra",
                  "Mängd_info.dålig","Relevans_info.dålig","Feedback.dålig","Hemsida.dålig",
                  "Mängd_info.Viktigt","Relevans_info.Viktigt","Feedback.Viktigt","Hemsida.Viktigt",
                  "Utrustning_utbud.bra","Utrustning_väntetid.bra","Utrustning_skick.bra",
                  "Utrustning_utbud.dålig","Utrustning_väntetid.dålig","Utrustning_skick.dålig",
                  "Utrustning_utbud.Viktigt","Utrustning_väntetid.Viktigt","Utrustning_skick.Viktigt",
                  "Utrymme.bra","Städning.bra","Motiverande.bra", "omklädningsrum.bra","Musik.bra",
                  "Utrymme.dålig","Städning.dålig","Motiverande.dålig", "omklädningsrum.dålig","Musik.dålig",
                  "Utrymme.Viktigt","Städning.Viktigt","Motiverande.Viktigt", "omklädningsrum.Viktigt","Musik.Viktigt",
                  "Öppettider.bra","Läge.bra","Öppettider.dålig","Läge.dålig","Öppettider.Viktigt","Läge.Viktigt",
                  "Text_survey")

NF<-list(
)

#MAPPA INDIVIDUELLA FR?GOR

#TRIVSEL

tF1<-as.numeric(as.character(raw2$Stämning.bra))
tF2<-as.numeric(as.character(raw2$Gemenskap.bra))

tD1<-as.numeric(as.character(raw2$Stämning.dålig))
tD2<-as.numeric(as.character(raw2$Gemenskap.bra))

tV1<-as.numeric(as.character(raw2$Stämning.viktigt))
tV2<-as.numeric(as.character(raw2$Gemenskap.viktigt))

trivsel.F<-cbind(tF1,tF2)
trivsel.D<-cbind(tD1,tD2)
trivsel.V<-cbind(tV1,tV2)

#PT

pF1<-as.numeric(as.character(raw2$Kontakt_PT.bra))
pF2<-as.numeric(as.character(raw2$Kompetens_PT.bra))
pF3<-as.numeric(as.character(raw2$Behov_PT.bra))
pF4<-as.numeric(as.character(raw2$Hjälp_PT.bra))

pD1<-as.numeric(as.character(raw2$Kontakt_PT.dålig))
pD2<-as.numeric(as.character(raw2$Kompetens_PT.dålig))
pD3<-as.numeric(as.character(raw2$Behov_PT.dålig))
pD4<-as.numeric(as.character(raw2$Hjälp_PT.dålig))

pV1<-as.numeric(as.character(raw2$Kontakt_PT.Viktigt))
pV2<-as.numeric(as.character(raw2$Kompetens_PT.Viktigt))
pV3<-as.numeric(as.character(raw2$Behov_PT.Viktigt))
pV4<-as.numeric(as.character(raw2$HjäHjälp_PT.Viktigt))

pt.F<-cbind(pF1,pF2,pF3,pF4)
pt.D<-cbind(pD1,pD2,pD3,pD4)
pt.V<-cbind(pV1,pV2,pV3,pV4)


#GRUPPTRÄNING

gF1<-as.numeric(as.character(raw2$Tider.bra))
gF2<-as.numeric(as.character(raw2$Instruktörer.bra))
gF3<-as.numeric(as.character(raw2$Utbud_pass.bra))

gD1<-as.numeric(as.character(raw2$Tider.dålig))
gD2<-as.numeric(as.character(raw2$Instruktörer.dålig))
gD3<-as.numeric(as.character(raw2$Utbud_pass.dålig))

gV1<-as.numeric(as.character(raw2$Tider.Viktigt))
gV2<-as.numeric(as.character(raw2$Instruktörer.Viktigt))
gV3<-as.numeric(as.character(raw2$Utbud_pass.Viktigt))

gt.F<-cbind(gF1,gF2,gF3)
gt.D<-cbind(gD1,gD2,gD3)
gt.V<-cbind(gV1,gV2,gV3)

#RESULTAT

rF1<-as.numeric(as.character(raw2$Hjälp_mål.bra))
rF2<-as.numeric(as.character(raw2$Hjälp_nå_mål.bra))

rD1<-as.numeric(as.character(raw2$Hjälp_mål.dålig))
rD2<-as.numeric(as.character(raw2$Hjälp_nå_mål.dålig))

rV1<-as.numeric(as.character(raw2$Hjälp_mål.Viktigt))
rV2<-as.numeric(as.character(raw2$Hjälp_nå_mål.Viktigt))

rt.F<-cbind(rF1,rF2)
rt.D<-cbind(rD1,rD2)
rt.V<-cbind(rV1,rV2)

#SERVICE

sF1<-as.numeric(as.character(raw2$Välkommen.bra))
sF2<-as.numeric(as.character(raw2$Kontakt_personal.bra))
sF3<-as.numeric(as.character(raw2$Kundservice.bra))
sF4<-as.numeric(as.character(raw2$Kompetens.bra))

sD1<-as.numeric(as.character(raw2$Välkommen.dålig))
sD2<-as.numeric(as.character(raw2$Kontakt_personal.dålig))
sD3<-as.numeric(as.character(raw2$Kundservice.dålig))
sD4<-as.numeric(as.character(raw2$Kompetens.dålig))

sV1<-as.numeric(as.character(raw2$Välkommen.Viktigt))
sV2<-as.numeric(as.character(raw2$Kontakt_personal.Viktigt))
sV3<-as.numeric(as.character(raw2$Kundservice.Viktigt))
sV4<-as.numeric(as.character(raw2$Kompetens.Viktigt))

st.F<-cbind(sF1,sF2,sF3,sF4)
st.D<-cbind(sD1,sD2,sD3,sD4)
st.V<-cbind(sV1,sV2,sV3,sV4)


#KOMMUNIKATION

kF1<-as.numeric(as.character(raw2$Mängd_info.bra))
kF2<-as.numeric(as.character(raw2$Relevans_info.bra))
kF3<-as.numeric(as.character(raw2$Feedback.bra))
kF4<-as.numeric(as.character(raw2$Hemsida.bra))

kD1<-as.numeric(as.character(raw2$Mängd_info.dålig))
kD2<-as.numeric(as.character(raw2$Relevans_info.dålig))
kD3<-as.numeric(as.character(raw2$Feedback.dålig))
kD4<-as.numeric(as.character(raw2$Hemsida.dålig))

kV1<-as.numeric(as.character(raw2$Mängd_info.Viktigt))
kV2<-as.numeric(as.character(raw2$Relevans_info.Viktigt))
kV3<-as.numeric(as.character(raw2$Feedback.Viktigt))
kV4<-as.numeric(as.character(raw2$Hemsida.Viktigt))

kt.F<-cbind(kF1,kF2,kF3,kF4)
kt.D<-cbind(kD1,kD2,kD3,kD4)
kt.V<-cbind(kV1,kV2,kV3,kV4)


#TRÄNINGSUTRUSTNING

uF1<-as.numeric(as.character(raw2$Utrustning_utbud.bra))
uF2<-as.numeric(as.character(raw2$Utrustning_väntetid.bra))
uF3<-as.numeric(as.character(raw2$Utrustning_skick.bra))

uD1<-as.numeric(as.character(raw2$Utrustning_utbud.dålig))
uD2<-as.numeric(as.character(raw2$Utrustning_väntetid.dålig))
uD3<-as.numeric(as.character(raw2$Utrustning_skick.dålig))

uV1<-as.numeric(as.character(raw2$Utrustning_utbud.Viktigt))
uV2<-as.numeric(as.character(raw2$Utrustning_väntetid.Viktigt))
uV3<-as.numeric(as.character(raw2$Utrustning_skick.bra.Viktigt))

TU.F<-cbind(uF1,uF2,uF3)
TU.D<-cbind(uD1,uD2,uD3)
TU.V<-cbind(uV1,uV2,uV3)

#LOKALER & MILJÖ

LF1<-as.numeric(as.character(raw2$Utrymme.bra))
LF2<-as.numeric(as.character(raw2$Städning.bra))
LF3<-as.numeric(as.character(raw2$Motiverande.bra))
LF4<-as.numeric(as.character(raw2$omklädningsrum.bra))
LF5<-as.numeric(as.character(raw2$Musik.bra))

LD1<-as.numeric(as.character(raw2$Utrymme.dålig))
LD2<-as.numeric(as.character(raw2$Städning.dålig))
LD3<-as.numeric(as.character(raw2$Motiverande.dålig))
LD4<-as.numeric(as.character(raw2$omklädningsrum.dålig))
LD5<-as.numeric(as.character(raw2$Musik.dålig))

LV1<-as.numeric(as.character(raw2$Utrymme.Viktigt))
LV2<-as.numeric(as.character(raw2$Städning.Viktigt))
LV3<-as.numeric(as.character(raw2$Motiverande.Viktigt))
LV4<-as.numeric(as.character(raw2$omklädningsrum.Viktigt))
LV5<-as.numeric(as.character(raw2$Musik.Viktigt))

L.F<-cbind(LF1,LF2,LF3,LF4,LF5)
L.D<-cbind(LD1,LD2,LD3,LD4,LD5)
L.V<-cbind(LV1,LV2,LV3,LV4,LV5)


#TILLGÄNGLIGHET

TF1<-as.numeric(as.character(raw2$Öppettider.bra))
TF2<-as.numeric(as.character(raw2$Läge.bra))

TD1<-as.numeric(as.character(raw2$Öppettider.dålig))
TD2<-as.numeric(as.character(raw2$Läge.dålig))

TV1<-as.numeric(as.character(raw2$Öppettider.Viktigt))
TV2<-as.numeric(as.character(raw2$Läge.Viktigt))

T.F<-cbind(TF1,TF2)
T.D<-cbind(TD1,TD2)
T.V<-cbind(TV1,TV2)


#GRUPPERA INDIVIDUELLA FRÅGOR TILL KVALITETSOMRÅDEN
trivsel.F<-cbind(tF1,tF2)
trivsel.D<-cbind(tD1,tD2)
trivsel.V<-cbind(tV1,tV2)

pt.F<-cbind(pF1,pF2,pF3,pF4)
pt.D<-cbind(pD1,pD2,pD3,pD4)
pt.V<-cbind(pV1,pV2,pV3,pV4)

gt.F<-cbind(gF1,gF2,gF3)
gt.D<-cbind(gD1,gD2,gD3)
gt.V<-cbind(gV1,gV2,gV3)

rt.F<-cbind(rF1,rF2)
rt.D<-cbind(rD1,rD2)
rt.V<-cbind(rV1,rV2)

st.F<-cbind(sF1,sF2,sF3,sF4)
st.D<-cbind(sD1,sD2,sD3,sD4)
st.V<-cbind(sV1,sV2,sV3,sV4)

kt.F<-cbind(kF1,kF2,kF3,kF4)
kt.D<-cbind(kD1,kD2,kD3,kD4)
kt.V<-cbind(kV1,kV2,kV3,kV4)

TU.F<-cbind(uF1,uF2,uF3)
TU.D<-cbind(uD1,uD2,uD3)
TU.V<-cbind(uV1,uV2,uV3)

L.F<-cbind(LF1,LF2,LF3,LF4,LF5)
L.D<-cbind(LD1,LD2,LD3,LD4,LD5)
L.V<-cbind(LV1,LV2,LV3,LV4,LV5)


T.F<-cbind(TF1,TF2)
T.D<-cbind(TD1,TD2)
T.V<-cbind(TV1,TV2)

#ORDNA KVALITETSOMR?DENA I LISTOR

TV.F<-list(trivsel.F,pt.F,gt.F,rt.F,st.F,kt.F,TU.F,L.F,T.F)
TV.D<-list(trivsel.D,pt.D,gt.D,rt.D,st.D,kt.D,TU.D,L.D,T.D)
TV.V<-list(trivsel.V,pt.V,gt.V,rt.V,st.V,kt.V,TU.V,L.V,T.V)


NT<-c(
  "TRIVSEL",
  "PERSONLIG TRÄNING",
  "GRUPPTRÄNING",
  "RESULTAT",
  "SERVICE",
  "KOMMUNIKATION",
  "TRÄNINGSUTRUSTNING",
  "LOKALER & MILJÖ",
  "TILLGÄNGLIGHET"
  
)

abb<-c(
  "TR",
  "PT",
  "G",
  "R",
  "S",
  "K",
  "TU",
  "L",
  "T"
)

#BAKGRUNDSVARIABLER

kön<-raw2$Kön
tid<-raw2$Tid_tränat
grupp<-raw2$Gruppträning
pt<-raw2$PT

dir<-dir<-"C:\\Users\\Jesper\\Documents\\JEM\\Grafer"

sf<-function(x,y)x[y,]

#Alla
kano.quest(TV.F,TV.D,TV.V,NT,abb,dir)

#Har tränat gruppträning
g<-which(grupp==1)
TV.F.g<-lapply(TV.F,sf,g)
TV.D.g<-lapply(TV.D,sf,g)
TV.V.g<-lapply(TV.V,sf,g)

kano.quest(TV.F.g,TV.D.g,TV.V.g,NT,abb,dir)

#Har tränat PT
g<-which(pt==1)
TV.F.g<-lapply(TV.F,sf,g)
TV.D.g<-lapply(TV.D,sf,g)
TV.V.g<-lapply(TV.V,sf,g)

kano.quest(TV.F.g,TV.D.g,TV.V.g,NT,abb,dir)

#Har ej tränat pt
g<-which(pt==2)
TV.F.g<-lapply(TV.F,sf,g)
TV.D.g<-lapply(TV.D,sf,g)
TV.V.g<-lapply(TV.V,sf,g)

kano.quest(TV.F.g,TV.D.g,TV.V.g,NT,abb,dir)

#Har tränat PT ej gruppträning
g<-which(pt==1 & grupp==2)
TV.F.g<-lapply(TV.F,sf,g)
TV.D.g<-lapply(TV.D,sf,g)
TV.V.g<-lapply(TV.V,sf,g)

kano.quest(TV.F.g,TV.D.g,TV.V.g,NT,abb,dir)

#Har tränat länge
g<-which(tid>3)
TV.F.g<-lapply(TV.F,sf,g)
TV.D.g<-lapply(TV.D,sf,g)
TV.V.g<-lapply(TV.V,sf,g)

kano.quest(TV.F.g,TV.D.g,TV.V.g,NT,abb,dir)

#Har tränat lite
g<-which(tid<4)
TV.F.g<-lapply(TV.F,sf,g)
TV.D.g<-lapply(TV.D,sf,g)
TV.V.g<-lapply(TV.V,sf,g)

kano.quest(TV.F.g,TV.D.g,TV.V.g,NT,abb,dir)

#Textanalys
library(tm)
library(RTextTools)
library(topicmodels)

setwd("C:\\Users\\Jesper\\Documents\\JEM\\Skript\\Undersökningar")
stop <- scan('stoppord_egna.txt', what='character',comment.char=';')
                         
Text.baskrav<-as.character(raw2$Baskrav_text)        
Text.performer<-as.character(raw2$Key_Perfomer_Text)
Text.delighter<-as.character(raw2$Delighter_text)


corpus<-Text.baskrav
#corpus<-corpus[!corpus==""]
setwd("C:\\Users\\Jesper\\Documents\\JEM\\Skript\\Undersökningar")
stop <- scan('stoppord_egna.txt', what='character',comment.char=';')
df <- do.call("rbind", lapply(corpus, as.data.frame))
names(df)<-"text"
myCorpus <- Corpus(VectorSource(df$text))
myCorpus = tm_map(myCorpus, tolower)
myCorpus = tm_map(myCorpus, removePunctuation)
myCorpus = tm_map(myCorpus, removeNumbers)
myStopwords = c(stopwords('swedish'), stop)
idx = which(myStopwords == "r")
myCorpus = tm_map(myCorpus, removeWords, myStopwords)

dictCorpus = myCorpus

myCorpus = tm_map(myCorpus, stemDocument)
myCorpus <- tm_map(myCorpus, PlainTextDocument)
myCorpus = tm_map(myCorpus, stemCompletion, dictionary=dictCorpus)
myDtm = DocumentTermMatrix(myCorpus, control = list(minWordLength = 3))
tdm<-TermDocumentMatrix(myCorpus,control=list(wordLengths=c(1,Inf)))
rowTotals <- apply(myDtm , 1, sum) #Find the sum of words in each Document
myDtm  <- myDtm[rowTotals> 0, ]

#Frequent terms
freq.terms<-findFreqTerms(tdm,lowfreq = 50)
term.freq <- rowSums(as.matrix(tdm)) 
term.freq <- subset(term.freq, term.freq >= 50) 
df <- data.frame(term = names(term.freq), freq = term.freq)
df[which(df$freq==max(df$freq)),]

library(ggplot2) 
ggplot(df, aes(x = term, y = freq)) + geom_bar(stat = "identity") + xlab("Terms") + ylab("Count") + coord_flip()

#Associated words
findAssocs(tdm, "dyrt", 0.2)
library(graph) 
library(Rgraphviz) 
plot(tdm, term = freq.terms, corThreshold = 0.12, weighting = T)

library(wordcloud)
k = 10
SEED = 1234
m = as.matrix(myDtm)
v = sort(colSums(m), decreasing=TRUE)
myNames = names(v)
k = which(names(v)=="miners")
myNames[k] = "mining"
d = data.frame(word=myNames, freq=v)
x11()
wordcloud(d$word, colors=c(3,4), random.color=FALSE, d$freq)
