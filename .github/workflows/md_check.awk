BEGIN {
    inheading=""
    recentheading=""
    inlist=""
    listdepth=0
    emptyline=1
    haserrors=0
    lclpath=gensub(/.*Sample-Test-Files/, "", "g", ARGV[1])
    printf "Checking %s:\n\n", lclpath
}
/^#/ {
    if( inheading ) {
        printf "Line %d-%d: Use '-' for lists and not '#'.\n", NR-1, NR
        haserrors=haserrors+1
    }
    match($0, /^#*/);
    if( recentheading == RLENGTH ) {
        printf "Line %d: A heading following another of same level not allowed. There should be at least one paragraph in between.\n", NR
        haserrors=haserrors+1    
    }
    recentheading=RLENGTH
    if( containsUnescapedUnderscore($0) ) {
        line = gensub(/\r/,"","g",$0)
        printf "Line %d: Contains unescaped underscores (%s)\n", NR, line
        haserrors=haserrors+1
    }
    if( inlist ) {
        printf "Line %d: End of a list must be followed by an empty line, not a heading.\n", NR    
        haserrors=haserrors+1
    }
    inheading=1
    inlist=""
    listdepth=0
    emptyline=""
    next
}
/^[ \t]*(-|\*|([0-9])+)/ {
    if( (inheading || !emptyline) && !inlist ) {    
        printf "Line %d: Beginning of a list must be separated from the paragraph before with an empty line.\n", NR
        haserrors=haserrors+1
    }
    match($0, /^ */);
    if( RLENGTH % 4 != 0 ) {   
        printf "Line %d: List entry must have indentation equal to a multiple of four (0, 4, 8, ...).\n", NR
        haserrors=haserrors+1
    }
    if( RLENGTH != 0 && !inlist ) {
        printf "Line %d: First list entry must have indentation equal to 0.\n", NR
        haserrors=haserrors+1    
    }
    if( containsUnescapedUnderscore($0) ) {
        line = gensub(/\r/,"","g",$0)
        printf "Line %d: Contains unescaped underscores (%s)\n", NR, line
        haserrors=haserrors+1
    }
    inheading=""
    inlist=1
    emptyline=""
    next
}
!NF {
    inheading=""
    inlist=""
    listdepth=0
    emptyline=1
    next
}
/^\s*$/ {
    inheading=""
    inlist=""
    listdepth=0
    emptyline=1
    next
}
/^[ \t]*$/ {
    inheading=""
    inlist=""
    listdepth=0
    emptyline=1
    next
}
/^>/ {
    if( inheading || inlist ) {
        printf "Line %d: Code line must be following an empty line.\n", NR    
        haserrors=haserrors+1
    }
    inheading=""
    inlist=""
    listdepth=0
    emptyline=1
    next
}
{
    if( inheading ) {
        printf "Line %d: A heading must be followed by an empty line.\n", NR    
        haserrors=haserrors+1
    }
    if( containsUnescapedUnderscore($0) ) {
        line = gensub(/\r/,"","g",$0)
        printf "Line %d: Contains unescaped underscores (%s)\n", NR, line
        haserrors=haserrors+1
    }
    inheading=""
    recentheading=""
    emptyline=""
    listdepth=0
}
END {
    if( containsUnescapedUnderscore(FILENAME) ) {
        printf "Readme's filepath contains underscores (%s)\n", FILENAME
        haserrors=haserrors+1
    }
    if( recentheading ) {
        printf "File cannot end with a heading.\n"
        haserrors=haserrors+1
    }
    if( haserrors == 0 ) {
        print "\nResult: No (known) errors found.\n"
    }
    else {
        printf "\nResult: Found discrepancies with the guidelines: %d problems.\n", haserrors
    }
}

function containsUnescapedUnderscore( txt ) {
    if( txt ~ "_" ) {
        lcl = txt
        lcl = gensub(/`.*`/, "", "g", lcl)
        lcl = gensub(/(!)?\[.*\]\(.*\)/, "", "g", lcl)
        return lcl ~ "_"
    } else {
        return ""
    }
}
