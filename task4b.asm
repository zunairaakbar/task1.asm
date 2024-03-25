TITLE Evaluating the expression,  (Arithmetic Expression.asm)
; This program evaluates the expression  “5+(6-2)”
; using two register only
INCLUDE Irvine32.inc
.data

.code
main PROC
; Storing 0 initially in the Register
mov eax, 0h
mov ebx, 0h

; Evaluating the expression
mov ebx, 6h		 ; Assigning value 6 in eax
sub ebx, 2h		 ; Subtracting the value 2 from eax
mov eax, ebx		 ; Assigning value of eax in ebx
add eax, 5		 ; Adding the value 5 in ebx

call DumpRegs 	         ; showing the registers
exit
main ENDP
END main
