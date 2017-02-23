
.386
.model flat, stdcall
option casemap:none

.data

.code
start:

	;idea :
	;count the number of 1 in binary number, if its 1, then number is power of 2, else its not
intialize_label:
		MOV ecx, 32; intial number
		MOV eax, 0 ; counts number of 1s in number

check_binary:
		SHR ecx, 1; get least important number, check if its 1 or 0
		ADC eax, 0; add it to eax to count number of 1
		INC ecx; adds back 1 to eac because loop removes 1
		LOOP check_binary

		SUB eax, 01h; check if number of 1s was 1
		JZ is_power; if it is jump to is power
		JMP not_power; if not, jump to not power

is_power:
		MOV eax, 0;set eax 0 if original number was power of 2
		JMP end_label

not_power:
		MOV eax, 0;set eax to FFFFFF if number was not a power
		DEC eax
end_label:

	
end start