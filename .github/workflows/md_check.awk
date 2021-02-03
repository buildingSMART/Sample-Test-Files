BEGIN {
    inheading=false
    inlist=false
    emptyline=true
    haserrors=false
}
/^[ \t]*#/ {
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
