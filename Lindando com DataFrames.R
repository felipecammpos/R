data()
data("airquality")
? airquality
#--------------------------#
#Resumo dos dados
summary(airquality)

#Chamando apenas uma variável do DataFrame
airquality$Temp

#Obtendo algumas informações sobre a variável temperatura
mean(airquality$Temp)     #Média
sd(airquality$Temp)       #Desvio padrão
min(airquality$Temp)      #Menor valor
max(airquality$Temp)      #Maior valor
median(airquality$Temp)   #mediana
quantile(airquality$Temp) #Mediana, quartis, max e min

#[linhas, colunas]
airquality[ , 4] #Mostra todas as  linhas da coluna 4 (Temp)
airquality[15, ] #Mostra a 15 linha de todas as colunas
airquality[ , 2] #Mostra todas as  linhas da coluna 2 (Solar.R)
airquality[57, 4]#Linha 57 e coluna 4

#Destrinchando o DataFrame
airquality[1:10, ]     #linhas 1 a 10 de todas colunas
airquality[, 2:3]      #todas as linhas das colunas 2 a 3
airquality[35:50, 3:5] #linhas 35 a 50 de todas colunas

#Pedaços não contínuos
airquality[c(1, 7), ] #linhas 1 e 7 de todas as colunas
airquality[ , c(1, 6)] #todas as linhas das colunas 1 e 6

#combinando 
airquality[3:12, c(1, 3)] #linhas de 3 a 12 e colunas 1 e 3

#------------------------#
#calcular temperatura média do 1 mês
mean(airquality[1:31, 4])
#2 mês
mean(airquality[32:61, 4])
#------------------------#
#Calculando de outra forma
mean(airquality$Temp[1:31])
mean(airquality$Temp[airquality$Month == 5])

#tapply (variável de interesse, variável de classificação, função a ser calculada)
#temperatura média por mês
tapply(airquality$Temp, airquality$Month, mean)

#Desvio padrão 
tapply(airquality$Temp, airquality$Month, sd)
#------------------------#
#Removendo valores NA
mean(airquality$Ozone)
mean(airquality$Ozone, na.rm = TRUE)


tapply(airquality$Ozone, airquality$Month, mean, na.rm=TRUE)
tapply(airquality$Ozone, airquality$Month, sd, na.rm=TRUE)

#Usando a função which()
#Qual linha a concentração de ozônio foi igual a 1?
which(airquality$Ozone == 1)
#Qual linha a concentração de ozônio foi igual a 168?
which(airquality$Ozone == 168)
#Quais linhas a concentração de ozônio foi menor ou igual a 10?
which(airquality$Ozone <= 10)

#dados do dia com ozônio igual a 1
airquality[which(airquality$Ozone == 1), ]
airquality[which(airquality$Ozone <= 10), ]

#dia e mês onde o ozonio foi menor ou igual a 10
airquality[which(airquality$Ozone <= 10), 5:6]
