EXTRN byValueExtern : PROC

.CODE

byValue PROC
	sub rsp, 120

	mov QWORD PTR [rsp], 1
	mov QWORD PTR [rsp+8], 2
	mov QWORD PTR [rsp+16], 3

	lea rax, QWORD PTR [rsp+24]
	lea rcx, QWORD PTR [rsp]
	mov rdi, rax
	mov rsi, rcx
	mov ecx, 24
	rep movsb

	lea rax, QWORD PTR [rsp+48]
	lea rcx, QWORD PTR [rsp]
	mov rdi, rax
	mov rsi, rcx
	mov ecx, 24
	rep movsb

	lea rax, QWORD PTR [rsp+72]
	lea rcx, QWORD PTR [rsp]
	mov rdi, rax
	mov rsi, rcx
	mov ecx, 48
	rep movsb

	lea rcx, QWORD PTR [rsp]
	sub rsp, 8
	call byValueExtern
	add rsp, 128
	ret
byValue ENDP

END
