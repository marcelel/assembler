.text

.type fun, @function

.global fun

# rdi = bufor
# rsi = napis a
# rdx = napis b


fun:
	mov %rdi, %rax
	
	# napis a 
	mov $0, %r8
	
	# napis b
	mov $0, %r9
	
	# napis wynikowy
	mov $0, %r10
	
loop:
	cmpb $0, (%rsi, %r8, 1)
	je isBOver
	
	# kopiuj z a jeśli coś tam jest
checkA:
	cmpb $0, (%rsi, %r8, 1)
	je checkB
	mov (%rsi, %r8, 1), %cl
	mov %cl, (%rax, %r10, 1)
	inc %r8	
	inc %r10
		
checkB:
	cmpb $0, (%rdx, %r9, 1)
	je loop
	
	mov (%rdx, %r9, 1), %cl
	mov %cl, (%rax, %r10, 1)
	inc %r9
	inc %r10
	
	jmp loop
	
isBOver:
	cmpb $0, (%rdx, %r9, 1)
	je theend
	
	jmp checkB
	
theend:
	movb $0, (%rax, %r10, 1)
	ret
