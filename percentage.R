
posSc=table_final$Positive
negSc=table_final$Negative
table_final$PosPercent = posSc/ (posSc+negSc)
pp = table_final$PosPercent
pp[is.nan(pp)] <- 0
table_final$PosPercent = pp
table_final$NegPercent = negSc/ (posSc+negSc)
nn = table_final$NegPercent
nn[is.nan(nn)] <- 0
table_final$NegPercent = nn