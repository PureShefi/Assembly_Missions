
.386
.model flat, stdcall
option casemap:none

.data

.code
start:
; Intialize variables
	MOV eax,41
	MOV ebx,127
	MOV ecx,23
	
;check if eax larger then ebx,and if so compare to ecx
	CMP eax,ebx
	JB ebx_larger
	CMP eax,ecx
	JB ecx_larger
	JMP end_label
	
	
ebx_larger:
	CMP ebx,ecx
	JB ecx_larger
	MOV eax,ebx
	JMP end_label
	
ecx_larger:
	MOV eax,ecx

end_label:
	
end start