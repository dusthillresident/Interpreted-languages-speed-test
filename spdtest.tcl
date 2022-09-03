set pi 3.14159265358979323846264338327950288

proc fnsin { _in } {
 global pi
 set _in [expr {$_in+$pi*0.5} ]
 return [ fns [ expr {$_in/$pi} ] ]
}

proc fn_s { _in } {
 set i [expr {$_in-int($_in)} ]
 set r [expr {(0.5-abs($i-0.5))*0.7} ]
 return [expr {($i*$i*2.0)*(1.0-$r)+$i*$r} ]
}

proc fns {_in} {
 set _in [expr {abs($_in)}]
 if {int($_in)&1} {
  set _in [expr {1.0-($_in-int($_in))}]
 } else {
  set _in [expr {$_in-int($_in)}]
 }
 if {$_in<0.5} {
  set out [fn_s $_in]
 } else {
  set out [expr {1.0-[fn_s [expr {1.0-$_in}]]} ]
 }
 return [expr {$out*2-1} ]
}


set i 0
set s 0
while {$i<2010000} {
 set s [expr {$s+[fnsin $i]}]
 incr i
}
puts $s
exit