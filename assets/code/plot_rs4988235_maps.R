library(raster)
library(sp)
library(RColorBrewer)
library(gstat)

path <- "https://raw.githubusercontent.com/mathii/mathii.github.com/master/assets/data/"
load(url("http://github.com/mgimond/Spatial/raw/master/Data/raster.RData"))
elevation <- elev - bath
data <- read.table(paste0(path, "WestEurasiaAllrs4988235.txt"), as.is=T)
anno <- read.table(paste0(path,"WestEurasia.anno"), as.is=T, header=T, sep="\t")
present <- read.table(paste0(path,"Liebert_rs4988235.txt"), header=TRUE,  as.is=TRUE)


colnames(data) <- c("ID", "GT")
data$GT <- ifelse(data$GT=="0/0", 0, ifelse(data$GT=="1/1", 1, NA))
data <- data[!is.na(data$GT),]
data <- merge(data, anno, by="ID")
data$Lat <- as.numeric(data$Lat)
data$Long <- as.numeric(data$Long)
data$Date <- as.numeric(data$Date)
data <- data[!is.na(data$Long),]

#Add in data from Scheunemann et al that wasn't in the original file
#https://www.ncbi.nlm.nih.gov/pubmed/28556824
data<-rbind(data, c(123, 0, NA, 1300, NA, NA, 30, 30, NA))
data<-rbind(data, c(124, 0, NA, 1300, NA, NA, 30, 30, NA))

#Set the frequency in the sahara to zero (this just avoids kriging
#effects, but remove it if you don't like that. 
for( i in 1:10){
    for( j in c(-i,0,i,10+i,20+i,30+i)){
        data<-rbind(data, c(124, 0, NA, 1300, NA, NA,20, 30+j, NA))
    }
}

ee<-crop(elevation, extent(elevation, 60, 200, 500, 830))
ee[ee<0]<-(-4000)
#plot(ee)

dates <- c(10000,5000,2500,0)
pdf("rs4988235_history.pdf", width=9, height=6)
par(mfrow=c(2,2))
par(mar=c(2.1,2.6,2.8,1.6))
for(i in 1:3){
    this.data <- data[data$Date<=dates[i]&data$Date>dates[i+1],]
    spdata<-SpatialPointsDataFrame(this.data[,c("Long", "Lat")], data=this.data)
    grid<-coordinates(ee)
    colnames(grid) <- c("Long", "Lat")
    grid<-SpatialPoints(grid)
    dat.krg<-krige(GT~1, spdata, grid)
    dat.krg$var1.pred[is.infinite( dat.krg$var1.pred)]<-NA
    dat.krg$var1.var[is.infinite( dat.krg$var1.var)]<-NA
    rr<-rasterFromXYZ(as.data.frame(dat.krg)[,1:3])
    emask <- ee
    emask[ee<0] <- NA
    rr <- mask(rr,emask)
    plot(rr, col=brewer.pal(9, "Reds"), colNA="grey", main=paste0(dates[i], "-", dates[i+1], " BP"))
    jspdata.1<-SpatialPointsDataFrame(apply(this.data[this.data$GT==0,c("Long", "Lat")], 2, jitter, amount=1), data=this.data[this.data$GT==0,c("Long", "Lat")])
    jspdata.2<-SpatialPointsDataFrame(apply(this.data[this.data$GT==1,c("Long", "Lat")], 2, jitter, amount=1), data=this.data[this.data$GT==1,c("Long", "Lat")])
    points(jspdata.1, pch=16, cex=0.4, col="lightblue")
    points(jspdata.2, pch=16, cex=0.6, col="blue")

}

present$Freq <- as.numeric(present$Freq)
present <- present[!is.na(present$Freq),]
pspdata<-SpatialPointsDataFrame(present[,c("Long", "Lat")], data=present)
dat.krg<-krige(Freq~1, pspdata, grid, weights=pspdata$N)
rr<-rasterFromXYZ(as.data.frame(dat.krg)[,1:3])
emask <- ee
emask[ee<0] <- NA
rr <- mask(rr,emask)
plot(rr, col=brewer.pal(9, "Reds"), colNA="grey", main="Present")
points(pspdata, pch=16, cex=0.4, col="black")
dev.off()
