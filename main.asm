;  Fun Snake main file        (main.asm)

; this file is the main file of our snake game

INCLUDE Irvine32.inc

.data
	x BYTE "O",0
	eyes BYTE ":",0
.code
main PROC
	
	; initialize the snake
	call initSnake
	


	exit
main ENDP


initSnake PROC
; This procedure initializes the snake in the middle of the screen

; Set text color to green on black background
	mov eax, green + (black*16)
	call SetTextColor 

	; clear the screen
	call Clrscr
	; move cursor to row 15 col 60
	mov dh, 15
	mov dl, 60
	call GotoXY
	; write the string x (or the char X
	mov al, x
	call WriteChar

	; move cursor to row 15 col 60
	mov dh, 15
	mov dl, 61
	call GotoXY
	; write the string x (or the char X
	mov al, x
	call WriteChar
	; move cursor to row 15 col 60
	mov dh, 15
	mov dl, 62
	call GotoXY
	; write the string x (or the char X
	mov al, eyes
	
	call WriteChar

	ret
initSnake ENDP

END main