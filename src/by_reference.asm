EXTRN byReferenceExtern : PROC

.CODE

byReference PROC
	sub rsp, 72

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

	lea rcx, QWORD PTR [rsp]
	sub rsp, 8
	call byReferenceExtern
	add rsp, 80
	ret
byReference ENDP

END
