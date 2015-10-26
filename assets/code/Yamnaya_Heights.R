# GET EQUATION AND R-SQUARED AS STRING
# SOURCE: http://goo.gl/K4yh

lm.eqn <- function(m){
    eq <- substitute(italic(y) == a + b %.% italic(x)*","~~italic(R)^2~"="~r2, 
         list(a = format(coef(m)[1], digits = 2), 
              b = format(coef(m)[2], digits = 2), 
             r2 = format(summary(m)$r.squared, digits = 2)))
    as.character(as.expression(eq));                 
    as.expression(eq);                 
  }


data <- read.table("Yamnaya_heights.txt", header=TRUE)
plot(data$Yamnaya_PC, data$Height, pch=16, xlab="Percent Yamnaya ancestry (Haak et al 2015)", ylab="Average adult male height (cm)", bty="n", ylim=c(170,182))

## Regression
lm1<-lm(data$Height~data$Yamnaya_PC)
abline(lm1$coefficients, col="blue", lwd=2)
text(0, lm1$coefficients[1], lm.eqn(lm1), col="blue", pos=4, cex=0.75)

## Remove shortest
data2 <- data[!(data$Region %in% c("Sicily", "Sardinia", "Malta")),]
lm2<-lm(data2$Height~data2$Yamnaya_PC)
lines(c(15,100), lm2$coefficients[1]+c(15,100)*lm2$coefficients[2], col="red", lwd=2 )
text(-2, lm2$coefficients[1]+15*lm2$coefficients[2]-0.3, lm.eqn(lm2), col="red", pos=4, cex=0.75)
