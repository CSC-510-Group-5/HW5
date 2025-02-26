BEGIN { 
    # Split based on paragraphs (this is fine for PASS 1 since words are separated by single new line)
    RS="\n\n" 
    # Output fields separated by a comma
    OFS=","
}
# If on PASS 1
PASS == 1 { 
    # Print the top 10 words 
    print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10
    # Store all of the words in an array of words for reference
    for (i = 1; i <= 10; i++) {
        words[i] = $i
    }
}
# If on PASS 2
PASS == 2 {
    # Reset word count array for this paragraph
    for(i = 1; i <= 10; i++) {
        wc[words[i]] = 0
    }
    # Count the top words in this paragraph
    for (i = 1; i <= NF; i++) {
        # Increment this count if the word is present in top words list
        if ($i in wc) {
            wc[$i] += 1
        }
    }
    # Print the resulting word counts
    print wc[words[1]],wc[words[2]],wc[words[3]],wc[words[4]],wc[words[5]],wc[words[6]],wc[words[7]],wc[words[8]],wc[words[9]],wc[words[10]]
}
END{}