TITLE Swapping the Variables (Swap.asm)
; This program swaps 8-bit unsigned integers and 
; showcases the values before and after the swap operation.
INCLUDE Irvine32.inc
.data
val1 BYTE 20h        ; val1 declared as a variable of type BYTE and initialized
val2 BYTE 30h
tempVal BYTE ?       ; tempVal declared as a variable of type BYTE to store values temporarily
.code
main PROC
; Storing 0 initially in Registers
mov eax, 0h
mov ebx, 0h

; Storing values in Registers and displaying before Swapping
mov al,val1         ; Assigning value of val1 in eax
mov bl,val2         ; Assigning value of val2 in ebx
call DumpRegs       ; Showing the registers

; Swapping the Data variables
mov al, val1
mov tempVal, al     ; Assigning value of val1 in tempVal
mov al, val2
mov val1, al        ; Assigning value of val2 in val1
mov al, tempVal
mov val2, al        ; Assigning value of tempVal in val2

; Storing values in Registers and displaying after Swapping
mov al,val1         ; Assigning value of val1 in eax
mov bl,val2         ; Assigningvalue of val2 in ebx
call DumpRegs       ; showing the registers

exit
main ENDP
END main
