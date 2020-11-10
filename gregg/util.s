# Swap the value of two registers
.macro	swap	%a,	%b
addiu	$sp,	$sp,	-4
sw	%a,	($sp)
move	%a,	%b
lw	%b,	($sp)
addiu	$sp,	$sp,	4
.end_macro
