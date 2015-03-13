namespace eval cookfs {}
namespace eval cookfs {}

proc cookfs::pkgconfig {{command ""} {value ""} {newValue ""}} {
    variable pkgconfig
    variable pkgconfigInitialized

    if {![info exists pkgconfigInitialized]} {
	array set pkgconfig {
	    package-version	"1.4"

	    c-pages		"1"
	    c-fsindex		"1"
	    c-readerchannel	"1"

	    feature-aside "1"
	    feature-bzip2 "0"
	    feature-metadata "1"
	}
	set pkgconfigInitialized 1
    }

    if {$command == "set"} {
	if {[info exists pkgconfig($value)]} {
	    set pkgconfig($value) $newValue
	    return $pkgconfig($value)
	}  elseif  {$value != ""} {
	    set an [lsort [array names pkgconfig]]
	    error "Unknown field \"$value\"; should be one of: [join [lrange $an 0 end-1] {, }] or [lindex $an end]."
	}
    }  elseif {$newValue == ""} {
	switch -- $command {
	    get {
		if {[info exists pkgconfig($value)]} {
		    return $pkgconfig($value)
		}  elseif  {$value != ""} {
		    set an [lsort [array names pkgconfig]]
		    error "Unknown field \"$value\"; should be one of: [join [lrange $an 0 end-1] {, }] or [lindex $an end]."
		}
	    }
	    list {
		if {$value == ""} {
		    return [lsort [array names pkgconfig]]
		}
	    }
	}
    }
    error "Usage: ::cookfs::pkgconfig list|get paramName"
}

package provide vfs::cookfs::pkgconfig 1.4

