# Calculate the nth position of a word array
.macro	nth	%dest,	%base,	%off
sll	%dest,	%off,	2
addu	%dest,	%dest,	%base
.end_macro

# Calculate the nth position of a word array
.macro	nthi	%dest,	%base,	%off
addiu	%dest,	%base,	%off + %off + %off + %off # Because %off * 4 is too much
.end_macro
