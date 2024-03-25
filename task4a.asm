TITLE Evaluating the expression,  (Arithmetic Expression.asm)
; This program calculates the expression "5+(6-2)"
; utilizing only one register.
INCLUDE Irvine32.inc
.data

.code
main PROC
; Storing 0 initially in the Register
mov eax, 0h

; Evaluating the expression
mov eax, 6h		 ; Assigning value 6 in eax
sub eax, 2h		 ; Subtracting the value 2 from eax
add eax, 5h		 ; Adding value 5 in eax

call DumpRegs 	         ; showing the registers
exit
main ENDP
END main
