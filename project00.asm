TITLE Program Template     (project00.asm)

; Author:
; Last Modified:
; OSU email address: 
; Course number/section:
; Project Number:                 Due Date:
; Description:

INCLUDE Irvine32.inc

DOG_FACTOR = 7

.data
userName	BYTE	33 DUP(0)	; string to be entered by user
userAge		BYTE	?			; int to be entered by user
intro_1		BYTE	"Hi, my name is Dan and I'll be telling your age in dog years", 0
prompt_1	BYTE	"what's your name? ", 0
intro_2		BYTE	"Nice to meet you. ", 0
prompt_2	BYTE	"How old are you? ", 0
dogAge		DWORD	?
result_1	BYTE	"Wow... that's ", 0 
result_2	BYTE	" in dog years !", 0
goodBye		BYTE	"Good-bye, ", 0

.code
main PROC

; here you want to comment in the different steps you'll be taking

; Introduce Programmer
	mov		edx, OFFSET	intro_1
	call	WriteString
	call	CrLf
; Get user name

;Calculate user's age in "dog years"

;say goodbye

	exit	; exit to operating system
main ENDP

; (insert additional procedures here)

END main


; if you save something as a new file, you will have to manually unadd the old template asm and add the new template asm. never open
; template asm, always open the project instead. you can add and remove stuff by right clicking on project or by clicking on project up there.
; only 1 asm file active on a project. 
; recommends copying folder for each project, then rename it to proj0 or something, and going from there. 