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

;EA7BF44E00F0D82775CFD20AB7DA7BC35A001A7B7FA19E15F979E04718875FA7820BDDE9B53A5637CF7837FD0F6A469EBB9CF4B34F3AC143E5E3637B6E3B6AD4AFE0A835918197E6465E7F64E228AB2744A38CECF019655203DF16FEB59562B45D8A2F852E1CE69E072EA380E5C6C7F943C01DC18FD02DF78BD3895B6EEF36E92DA44E567A20F75CC6043FA0CF60CBBA79BB32A516C2EB47E6BA0136CEA2314D39F55BF802F1EC7D45EC1CD82E95B665ADBBC493EE0A64A6D48C42982988748EC9DD1A390041B8C9D95FD70CE9A200E9B3565FECE5C13D055E4D093995CE72B38D7BCB10478EA62ADDF6F864BF529805472F5CCB14B35B748A828D1B8EA15C3E
