include Irvine32.inc

.data
menuMsg    BYTE "Menu:",0dh,0ah
           BYTE "1. Option One",0dh,0ah
           BYTE "2. Option Two",0dh,0ah
           BYTE "3. Option Three",0dh,0ah
           BYTE "Enter choice (1-3): ",0

msg1       BYTE "You chose Option One",0
msg2       BYTE "You chose Option Two",0
msg3       BYTE "You chose Option Three",0
msgInvalid BYTE "Invalid choice",0

JumpTable  DWORD Option1, Option2, Option3

.code
main PROC
    mov edx, OFFSET menuMsg
    call WriteString

    call ReadInt        
    dec eax             ; 1¡V3 ¡÷ 0¡V2

    cmp eax, 2
    ja  InvalidChoice

    mov ebx, OFFSET JumpTable
    call DWORD PTR [ebx + eax*4]   ; CALL procedures
    jmp EndProgram

InvalidChoice:
    mov edx, OFFSET msgInvalid
    call WriteString

EndProgram:
    call Crlf
    exit
main ENDP

; ===== Procedures =====
Option1 PROC
    mov edx, OFFSET msg1
    call WriteString
    ret
Option1 ENDP

Option2 PROC
    mov edx, OFFSET msg2
    call WriteString
    ret
Option2 ENDP

Option3 PROC
    mov edx, OFFSET msg3
    call WriteString
    ret
Option3 ENDP

END main
