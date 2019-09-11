
trump.tweets = searchTwitter("trump", n=150)  
df <- do.call("rbind", lapply(trump.tweets, as.data.frame))
df$text <- sapply(df$text,function(row) iconv(row, "latin1", "ASCII", sub="")) #remove emoticon
df$text = gsub("(f|ht)tp(s?)://(.*)[.][a-z]+", "", df$text) #remove URL
sample <- df$text