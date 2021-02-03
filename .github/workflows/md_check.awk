BEGIN {
    inheading=false
    inlist=false
    listdepth=0
    emptyline=true
    haserrors=false
}
/^#/ {
    if( inheading ) {
        print "Line %d: Two headings following one another not allowed.", NR
        haserrors=true
    }
    else {
        inheading=true
    }
    emptyline=false
    next
}
/^[ \t]*-/ {
    if( (inheading || !emptyline) && !inlist ) {    
        print "Line %d: Lists need to be separated from the paragraph before with an empty line.", NR
        haserrors=true
    }
    match($0, /^ */);
    if( RLENGTH % 4 != 0 ) {   
        print "Line %d: Lists need to have indentation equal to a multiple of four (0, 4, 8, ...).", NR
        haserrors=true    
    }
    inheading=false
    inlist=true
    emptyline=false
    next
}
/^[ \t]$/ {
    inheading=false
    inlist=false
    emptyline=true
    next
}
{
    
}
END {
    if( haserrors ) {
        print "true"
    } else {
        print "false"
    }
}
