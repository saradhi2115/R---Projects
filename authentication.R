make sure you have installed it first by: 
#install.packages("twitteR") 
#and
#install.packages("ROAuth")
library(ROAuth)
library(twitteR)

consumer_key <-  #Insert your consumer key
#"AKJsxNqX2D8uTo9orgjRirvWL"
consumer_secret <- #Insert your consumer secret
#"QOKk0ctHhbXNQ5QaipqofrZQzWM92mfkcoP60xe7HJzjSUCz6F"
access_token <- #Insert your access token
#"2617540074-5l6gGJhCP8iw9DS7sVD9qsFaUGfWGO9fqlHt5Wg"
access_secret <- #Insert your access secret
#"VVMfNIzgPEUmCk5QyIWr5A4ZSC2Lxy7CERoUtWs4jAe0l"

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

