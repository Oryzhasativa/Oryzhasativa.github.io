setwd('D:/Metopel/Latihan') # AWAS SETWD-NYA PERBAIKI DULU
library('readxl')
library('tidyverse')

# Baca data
dat<-read_excel('GDP INDONESIA.xlsx')

# Plot X dan Y
plot(dat$NILAI,dat$GDP,xlab="USD",ylab="USD")
plot(dat$VOL,dat$GDP,xlab="TON",ylab="USD")
# regresi
reg1<-lm(GDP~NILAI+VOL,data=dat)
summary(reg1)

# Membuat error
dat$u<-resid(reg1)

# plot eror
plot(dat$GDP,dat$u,xlab="USD",ylab="USD")

plot(dat$GDP,dat$u,xlab="TON",ylab="USD")
