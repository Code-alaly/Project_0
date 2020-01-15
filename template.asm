TITLE Add Integers     (template.asm)

; Author: Daniel Dubisz
; Last Modified: 1/14/19
; OSU email address: dubiszd@oregonstate.edu
; Course number/section: 271
; Project Number: 1                Due Date:
; Description: grabs some ints, adds them,
; returns them

INCLUDE Irvine32.inc

; (insert constant definitions here)

.data
titleIntro	BYTE	"		Some Basic Counting", 0
myIntro		BYTE	"	by Daniel Dubisz", 0
instruct	BYTE	"Enter 3 numbers A > B > C, and I'll show you the sums and differences.", 0
Anum		DWORD	?
Bnum		DWORD	?
Cnum		DWORD	?
Achar		BYTE	"A", 0
Bchar		BYTE	"B", 0
Cchar		Byte	"C", 0
first		BYTE	"First number: ", 0
second		BYTE	"Second number: ", 0
third		BYTE	"Third number: ", 0
plus		BYTE	" + ", 0
minus		BYTE	" - ", 0
equal		BYTE	" = ", 0
total		DWORD	?
wink		BYTE	"Impressed are you ;) ? Bye!", 0
; (insert variable definitions here)

.code
main PROC

; display my name and program title
	mov		edx, OFFSET	titleIntro
	call WriteString
	mov		edx, OFFSET	myIntro
	call	WriteString
	call	CrLf
	call	CrLf

; display instructions for user
	mov		edx, OFFSET instruct
	call	WriteString
	call	CrLf
	call	CrLf

; Enter 3 numbers A > B > C, and I'll show you the sums and differences.
	mov		edx, OFFSET first
	call	WriteString
	call	ReadInt
	mov		Anum, eax

	mov		edx, OFFSET second
	call	WriteString
	call	ReadInt
	mov		Bnum, eax

	mov		edx, OFFSET third
	call	WriteString
	call	ReadInt
	mov		Cnum, eax

; calculate and display all different ways they can be added and subtracted

; A + B
	mov		eax,	Anum
	mov		ebx,	Bnum
	ADD		eax,	ebx
	mov		total,	eax
	mov		eax,	Anum
	call	WriteDec
	mov		edx,	OFFSET plus
	call	WriteString
	mov		eax,	Bnum
	call	WriteDec
	mov		edx,	OFFSET	equal
	call	WriteString
	mov		eax,	total
	call	WriteDec
	call	CrLf

; A - B
	mov		eax,	Anum
	mov		ebx,	Bnum
	SUB		eax,	ebx
	mov		total,	eax
	mov		eax,	Anum
	call	WriteDec
	mov		edx,	OFFSET minus
	call	WriteString
	mov		eax,	Bnum
	call	WriteDec
	mov		edx,	OFFSET	equal
	call	WriteString
	mov		eax,	total
	call	WriteDec
	call	CrLf


; display terminating message

; (insert executable instructions here)

	exit	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
