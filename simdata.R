data1 <- rbinom(1000, 1, .282)
data2 <- rbinom(1000, 1, .323)

seqx <- seq(0,40,.1)
plot(seqx, exp(-.04*seqx))

dis <- round(15+30*runif(1000), 1)

data3 <- data.frame(
    distance = dis,
    success = rbinom(1000, 1, exp(-.07*dis))
  )

saveRDS(data1, file="~/Codes/Github/Teaching/ExoDay1/data1.Rds")
saveRDS(data2, file="~/Codes/Github/Teaching/ExoDay1/data2.Rds")
saveRDS(data3, file="~/Codes/Github/Teaching/ExoDay1/data3.Rds")
write.csv(data1, file="~/Codes/Github/Teaching/ExoDay1/data1.csv")
write.csv(data2, file="~/Codes/Github/Teaching/ExoDay1/data2.csv")
write.csv(data3, file="~/Codes/Github/Teaching/ExoDay1/data3.csv")
