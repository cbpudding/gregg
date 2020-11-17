# Swap the value of two registers
.macro	swap	%a,	%b
move	$at,	%a
move	%a,	%b
move	%b,	$at
.end_macro
