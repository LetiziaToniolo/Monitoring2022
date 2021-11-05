#R code for ecosystem monitoring by remote sensing
# First of all, we need to install additional packages

# https://cran.r-project.org/web/packages/raster/index.html

install.packages("raster")

library(raster)

setwd("C:/lab/") 
l2011 <- brick("p224r63_2011.grd")

# let's plot the green band
plot(l2011$B2_sre)

cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(l2011$B2_sre, col=cl)

#change the coloraRampPalette with dark green, green and light green
cl <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=cl)

# do the same for the blue band
cl <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=cl)

# plot both images in in just one multiframe graph
par(mfraw=c(1,2))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)

# now 2 raws and 1 column
par(mfrow=c(2,1))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)
