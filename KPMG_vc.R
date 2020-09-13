setwd("C:/Users/xinxinyan/Desktop/UNSWT3/MARK5827")

transaction_data<-read.csv("C:/Users/xinxinyan/Desktop/UNSWT3/MARK5827/KPMG_transaction.csv", header = TRUE)
address_data<-read.csv("C:/Users/xinxinyan/Desktop/UNSWT3/MARK5827/KPMG_customer_address.csv", header = TRUE)
demographic_data<-read.csv("C:/Users/xinxinyan/Desktop/UNSWT3/MARK5827/KPMG_customer_demographic.csv", header = TRUE)

#Start with transaction data in past 3 months
names(transaction_data)

#Check variable types
str(transaction_data)

#Convert transaction_date format to date
attach(transaction_data)

as.Date(transaction_date, format = "%m/%d/%Y")

detach(transaction_data)

str(transaction_data)

#Correct variable measurement types
number<-c(1:3)
transaction_data[number]<-lapply(transaction_data[number], as.numeric)

#Check data
summary(transaction_data)

#Then address data
names(address_data)

str(address_data)

number1<-c(1, 3, 6)
address_data[number1]<-lapply(address_data[number1], as.numeric)

summary(address_data)
#No porblem with address data. Very good!!

#Then customer demographic data
names(demographic_data)

str(demographic_data)

number2<-c(1, 5, 13)
demographic_data[number2]<-lapply(demographic_data[number2], as.numeric)

summary(demographic_data)





