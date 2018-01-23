section .text
	global main

main:
	push rdx
	push rcx
	push rbx

	mov rax, 4       ;syscall write
	mov rbx, 1       ;stdout is 1
	lea rcx, [rel msg]
	mov rdx, msg_end - msg       ;length of the string
	int 0x80

	mov r8, 0x33333333 ; KEY_SIZE
	lea r9, [rel main]
	sub r9, r8 			; key
	mov r10, 0x44444444 ; segment vaddr
	mov r11, 0x55555555 ; decrypt size

	mov r12, 0 ; i = 0

condition:

	mov rax, r12
	mov rdx, 0
	div r8 ; rdx = i % KEY_SIZE
	; *(vaddr + i) ^= *(key + (i % KEY_SIZE))
	; *(r10 + r12) ^= *(r9 + rdx)
	mov al, [r10 + r12]
	mov bl, [r9 + rdx]
	xor al, bl
	mov BYTE [r10 + r12], al


	inc r12
	cmp r12, r11
	jne condition

epilogue:
	pop rbx
	pop rcx
	pop rdx
	mov rax,0x22222222
	jmp rax


align 8
	msg db '....WOODY....',0xa
	msg_end db 0x0
