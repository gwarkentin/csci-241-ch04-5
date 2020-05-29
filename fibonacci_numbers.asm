; Program:     Chapter 4, Pr 5, Modified
; Description: Calculates first 12 values of Fibonacci sequence
; Student:     Gabriel Warkentin
; Date:        02/22/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

INCLUDE Irvine32.inc
.data
myMessage BYTE "First 12 Fibonacci Numbers:",0
fib BYTE 12 Dup(0)

.code
main3 PROC
	mov eax, 0
	mov ebx, 1
	mov ecx, 12
	mov esi, offset fib

	L1:
	mov edx, eax
	add edx, ebx
	mov eax, ebx
	mov ebx, edx
	mov [esi], al
	inc esi
	loop L1

	mov	 edx,OFFSET myMessage
	call WriteString
	call CrLf

	mov esi, offset fib
	mov ebx, type fib
	mov ecx, lengthof fib
	call DumpMem
	call WaitMsg

	exit
main3 ENDP

END ; main3