BEGIN { 
    FS=" " 
    OFS=" " 
}
{
    fencepost = 1 
    for(i = 1; i <= NF; i++) {
        if($i !~ /^(%s|is|the|in|but|can|a|of|to|that|it|for|on|with|as|this|was|at|by|an|be|from|or|are)$/) {
            if (!fencpost) printf OFS 
            printf "%s", $i
            fencepost = 0
        }
    }
    print ""
}
