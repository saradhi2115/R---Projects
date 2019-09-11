library(twitteR)
tw = userTimeline("BarackObama", n = 3200)
tw = twListToDF(tw)
vec1 = tw$text

hash.pattern = "#[[:alpha:]]+"
have.hash = grep(x = vec1, pattern = hash.pattern)
hash.matches = gregexpr(pattern = hash.pattern,
                        text = vec1[have.hash])
extracted.hash = regmatches(x = vec1[have.hash], m = hash.matches) 
df = data.frame(table(tolower(unlist(extracted.hash)))) 
colnames(df) = c("tag","freq")
df = df[order(df$freq,decreasing = TRUE),]

dat = head(df,50)
dat2 = transform(dat,tag = reorder(tag,freq)) 


library(ggplot2)

p = ggplot(dat2, aes(x = tag, y = freq)) + geom_bar(stat="identity", fill = "blue")
p + coord_flip() + labs(title = "Hashtag frequencies in the tweets of the Obama team (@BarackObama)")