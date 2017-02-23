
.386
.model flat, stdcall
option casemap:none

.data

.code
start:
; Intialize variables
	MOV ecx,100
	MOV eax,0
loopStart:
;Loop to go back to, each time exc is added to eac in order to get sum
	ADD eax,ecx
	Loop loopStart
	
end start