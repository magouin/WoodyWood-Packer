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

	mov rax, 0
	mov rbx, 0x33333333
	lea rdi, [rel pctp]
	mov rsi, rbx

	pop rbx
	pop rcx
	pop rdx
	mov rax,0x22222222
	jmp rax


align 8
	msg db 'hello ! Ca va ?',0xa, 0x0
	msg_end db 0x0
	pctp db 'Addr : %p',0xa,0x0
