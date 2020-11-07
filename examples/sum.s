.include	"../gregg.s"
.text
sum:	# int sum(int *a, int n)
	push	$t0				# Preserve the values of t0 through t2
	push	$t1
	push	$t2
	li	$t0,	0			# Initialize the index
	li	$t1,	0			# Initialize the accumulator
sum.loop:
	bge	$t0,	$a1,	sum.done	# As long as i < n
	sll	$t2,	$t0,	2		# Get the element the index is pointing to
	addu	$t2,	$t2,	$a0
	lw	$t2,	($t2)
	add	$t1,	$t1,	$t2		# Add the element to the accumulator
	addi	$t0,	$t0,	1		# Increment the index
	b	sum.loop			# Reevalulate the loop condition
sum.done:
	move	$v0,	$t1			# Return the value of the accumulator
	pop	$t0				# Restore the values of t0 through t2
	pop	$t1
	pop	$t2
	jr	$ra				# Return to the caller