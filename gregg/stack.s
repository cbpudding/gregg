.macro	pop	%victim
lw	%victim,	0($sp)
addiu	$sp,	$sp,	4
.end_macro

.macro	push	%victim
addiu	$sp,	$sp,	-4
sw	%victim,	0($sp)
.end_macro