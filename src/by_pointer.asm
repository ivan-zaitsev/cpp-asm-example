EXTRN byPointerExtern : PROC
EXTRN malloc : PROC

.CODE

byPointer PROC
	push rbp
	mov rbp, rsp

	sub rsp, 8
	mov rcx, 24
	call malloc
	add rsp, 8

	sub rsp, 8
	mov [rbp-8], rax

	mov QWORD PTR [rax], 1
	mov QWORD PTR [rax+8], 2
	mov QWORD PTR [rax+16], 3

	sub rsp, 8
	mov rcx, 16
	call malloc
	add rsp, 8

	mov rdx, [rbp-8]
	mov QWORD PTR [rax], rdx
	mov QWORD PTR [rax+8], rdx

	sub rsp, 8
	mov rcx, rax
	call byPointerExtern

	mov rsp, rbp
	pop rbp
	ret
byPointer ENDP

END
