; Name: Cesar Gutierrez
; CWID: 886646686
; Email: cesarg7@csu.fullerton.edu

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
section .data

    SYS_WRITE		equ	1
	FD_STDOUT		equ	1
    CRLF			db	13,10
	CRLF_LEN		equ	$-CRLF

    MSG			db	"The manager is here to help you find the area of your triangle.", 13,10, "Input your 3 floating point numbers representing the sides of a triangle.", 13,10, "Press enter after each number."
	MSG_LEN		equ	$-MSG

    A           db  "Your triangle is nonsense!"
    A_LEN       equ $-A

    B           db  "The area will be returned to Heron."
    B_LEN       equ $-B

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

section .text

global triangle
triangle:

    mov rax, SYS_WRITE
	mov rdi, FD_STDOUT
	mov rsi, MSG
	mov rdx, MSG_LEN
	syscall
	call crlf

    mov rax, 0
    ret 

crlf:
	mov rax, SYS_WRITE
	mov rdi, FD_STDOUT
	mov rsi, CRLF
	mov rdx, CRLF_LEN
	syscall
	ret