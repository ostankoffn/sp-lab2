section .data
	array db 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
	array_len equ $ - array

section .text
	global _start

_start:
	mov ecx, array_len
	mov esi, array
	mov edi, esi
	xor eax, eax

loop1:
	lodsb
	bts eax, 3
	jnb loop2

loop2:
	stosb
	loop loop1

loop3:
	mov ecx, 10
	mov esi, array
	xor ebx, ebx

loop4:
	lodsb
	add ebx, eax
	loop loop4

end:
	mov eax, 1
	mov ebx, 0
	int 0x80
