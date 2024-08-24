BEGIN {
    print "[No context]"
    print "title = No context"
    print "filterexpr = (>D) -+hygiene -+chore -+bike -+review -+gaming -+media -waiting: -@"
    print "sortexpr = desc:importance"
    print "show_all = 0"
    print ""
}

{
    context = substr($0, 2)
    gsub(/@/, "", $0)
    if (context == "pc" || context == "ha") {
        title = toupper(context)
    } else {
        title = toupper(substr($0, 1, 1)) substr($0, 2)
    }

    print "[" title "]"
    print "title = " title
    print "filterexpr = (>D) -+hygiene -+chore -+bike -+review -+gaming -+media -waiting: @"$0
    print "show_all = 0"
    print ""
}

END {
    print "# vim: ft=dosini"
}
