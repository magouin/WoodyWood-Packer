section .text
	global pouet

pouet:
		push rdx
		push rcx
		push rbx


        mov rax, 4       ;syscall write
        mov rbx, 1       ;stdout is 1
		lea rcx, [rel msg]
        mov rdx, msg_end - msg       ;length of the string
        int 0x80

		mov rax,0x22222222
		pop rbx
		pop rcx
		pop rdx
		jmp rax

align 8

        msg db 'hello ! Ca va ?',0xa
		msg_end db 0x0
