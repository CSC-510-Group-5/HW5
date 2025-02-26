#Remove the following stopwords from the provided document
#(is|the|in|but|can|a|the|is|in|of|to|a|that|it|for|on|with|as|this|was|at|by|an|be|from|or|are)

#!/usr/bin/env gawk -f  # pro-tip#1
BEGIN {FS = " "; OFS = " " }{
    stopwords = "(is|the|in|but|can|a|of|to|that|it|for|on|with|as|this|was|at|by|an|be|from|or|are)"
    for (i = 1; i <= NF; i++) {
        if ($i !~ stopwords) {
            print $i
        }
    }
}