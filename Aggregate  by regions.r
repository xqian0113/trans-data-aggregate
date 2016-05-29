setwd("C:/Users/endai/Desktop/Ruth's Chris")

customers<-read.csv("Regions With Stores Within 1 Year.csv",header=TRUE)

Rik.Jenkins<-subset(customers,Personal.Affiliation=='new york city'|Personal.Affiliation=='boston'|Personal.Affiliation=='cincinnati'|Personal.Affiliation=='manhattan'|Personal.Affiliation=='parsippany'|Personal.Affiliation=='princeton'|Personal.Affiliation=='weehawken'|Personal.Affiliation=='westchester',select=14:20)

Doranne.Hughes<-subset(customers,Personal.Affiliation=='arlington'|Personal.Affiliation=='bethesda'|Personal.Affiliation=='cherokee'|Personal.Affiliation=='dc - convention center'|Personal.Affiliation=='dc - connecticut nw'|Personal.Affiliation=='fairfax'|Personal.Affiliation=='gaithersburg'|Personal.Affiliation=='greensboro'|Personal.Affiliation=="tyson's corner",select=14:20)

Pete.Tambini<-subset(customers,Personal.Affiliation=='jacksonville'|Personal.Affiliation=='lake mary'|Personal.Affiliation=='orlando'|Personal.Affiliation=='ponte vedra beach'|Personal.Affiliation=='tampa'|Personal.Affiliation=='saint petersburg'|Personal.Affiliation=='winter park',select=14:20)

Roderick.Tizol<-subset(customers,Personal.Affiliation=='boca raton'|Personal.Affiliation=='bonita springs'|Personal.Affiliation=='coral gables'|Personal.Affiliation=='ft. lauderdale'|Personal.Affiliation=='memphis'|Personal.Affiliation=='n. palm beach'|Personal.Affiliation=='sarasota'|Personal.Affiliation=='west palm beach',select=14:20)

Todd.Lounsbury<-subset(customers,Personal.Affiliation=='beverly hills'|Personal.Affiliation=='fresno'|Personal.Affiliation=='marina del rey'|Personal.Affiliation=='palm desert'|Personal.Affiliation=='pasadena'|Personal.Affiliation=='woodland hills',select=14:20)

Nik.Talwar<-subset(customers,Personal.Affiliation=='albuquerque'|Personal.Affiliation=='anaheim'|Personal.Affiliation=='del mar'|Personal.Affiliation=='irvin'|Personal.Affiliation=='san diego'|Personal.Affiliation=='scottsdale',select=14:20)

Domingo.Lamrissi<-subset(customers,Personal.Affiliation=='bellevue'|Personal.Affiliation=='denver'|Personal.Affiliation=='portland'|Personal.Affiliation=='sacramento'|Personal.Affiliation=='roseville'|Personal.Affiliation=='san francisco'|Personal.Affiliation=='seattle'|Personal.Affiliation=='walnut creek',select=14:20)

Mark.Porter<-subset(customers,Personal.Affiliation=='austin'|Personal.Affiliation=='biloxi'|Personal.Affiliation=='dallas uptown'|Personal.Affiliation=='north dallas'|Personal.Affiliation=='fort worth'|Personal.Affiliation=='houston'|Personal.Affiliation=='lafayette'|Personal.Affiliation=='metairie'|Personal.Affiliation=='nashville'|Personal.Affiliation=='new orleans',select=14:20)

Domingo.Lamrissi<-subset(customers,Personal.Affiliation=='chicago'|Personal.Affiliation=='columbus'|Personal.Affiliation=='knoxville'|Personal.Affiliation=='louisville'|Personal.Affiliation=='minneapolis'|Personal.Affiliation=='northbrook'|Personal.Affiliation=='south barrington'|Personal.Affiliation=='troy',select=14:20)

#aggregate all data
rc<-customers[,14:20]
attach(rc)
aggall<-aggregate(rc,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggall)
detach(rc)

#calculate means by region
attach(Rik.Jenkins)
aggrj<-aggregate(Rik.Jenkins,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggrj)
detach(Rik.Jenkins)

attach(Doranne.Hughes)
aggdh<-aggregate(Doranne.Hughes,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggdh)
detach(Doranne.Hughes)

attach(Pete.Tambini)
aggpt<-aggregate(Pete.Tambini,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggpt)
detach(Pete.Tambini)

attach(Roderick.Tizol)
aggrt<-aggregate(Roderick.Tizol,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggrt)
detach(Roderick.Tizol)

attach(Todd.Lounsbury)
aggtl<-aggregate(Todd.Lounsbury,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggtl)
detach(Todd.Lounsbury)

attach(Nik.Talwar)
aggnt<-aggregate(Nik.Talwar,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggnt)
detach(Nik.Talwar)

attach(Domingo.Lamrissi)
aggdl<-aggregate(Domingo.Lamrissi,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggdl)
detach(Domingo.Lamrissi)

attach(Mark.Porter)
aggmp<-aggregate(Mark.Porter,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggmp)
detach(Mark.Porter)

attach(Domingo.Lamrissi)
aggdl<-aggregate(Domingo.Lamrissi,by=list(Personal.Affiliation), FUN=mean, na.rm=TRUE)
print(aggdl)
detach(Domingo.Lamrissi)