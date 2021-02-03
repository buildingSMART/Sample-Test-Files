BEGIN {
    inheading=""
    inlist=""
    listdepth=0
    emptyline=1
    haserrors=0
    printf "Checking results for file %s\n", ARGV[1]
}
/^#/ {
    if( inheading ) {
        printf "Line %d: Two headings following one another not allowed.\n", NR
        haserrors=haserrors+1
    }
    inheading=1
    inlist=""
    listdepth=0
    emptyline=""
    next
}
/^[ \t]*-/ {
    if( (inheading || !emptyline) && !inlist ) {    
        printf "Line %d: Lists need to be separated from the paragraph before with an empty line.\n", NR
        haserrors=haserrors+1
    }
    match($0, /^ */);
    if( RLENGTH % 4 != 0 ) {   
        printf "Line %d: List entries need to have indentation equal to a multiple of four (0, 4, 8, ...).\n", NR
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
{
    if( inheading ) {
        printf "Line %d: Headings must be followed by an empty line.\n", NR    
        haserrors=haserrors+1
    }
    if( inlist ) {
        printf "Line %d: Lists must be followed by an empty line.\n", NR    
        haserrors=haserrors+1
    }
    inheading=""
    emptyline=""
    inlist=""
    listdepth=0
}
END {
    if( FILENAME ~ "_" ) {
        printf "Filepath contains underscores: %s\n", FILENAME
        haserrors=haserrors+1        
    }
    if( haserrors == 0 ) {
        print "No (known) errors found."
    }
    else {
        printf "Found discrepancies with the guidelines: %d problems.\n", haserrors
    }
}
