
.386
.model flat, stdcall
option casemap:none

.data

.code
start:
; Intialize variables
	MOV ecx, 4; number of bytes
	MOV eax, 0aabbccddh; intial number
	MOV ebx, 0 ; container
	
;loop over eax, shift left and put overflow in ebx in reverse
reverse_eax:
	SHL ebx, 8; shift ebx left to make space for al
	MOV bl, al; copy first 8 bytes of eax
	SHR eax, 8; shift eax 8 bytes to get next bytes;
	LOOP reverse_eax; continue depending on number of needed bytes

	MOV eax, ebx; copy ebx to abx, because eax need to hold revesed number
	
end start