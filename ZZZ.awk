#Given cleaned data and the top words, generate a table to display the data
## Step 5: Generate table of word frequencies per paragraph
#$(TABLE): $(CLEANED) $(TOP_WORDS)
#	gawk -f ZZZ.awk PASS=1 $(TOP_WORDS) PASS=2 $(CLEANED) > $@

#The table looks like this
#challenging,do,key,and,data,example,aspect,engineering,we,
#1,0,0,0,3,0,1,0,0,
#0,1,1,2,1,1,0,0,1,