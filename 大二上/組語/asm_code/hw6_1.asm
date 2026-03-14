include Irvine32.inc

.data
    promptMsg   BYTE "Enter an integer: ",0
    posMsg      BYTE "The number is positive.",0
    negMsg      BYTE "The number is negative.",0
    zeroMsg     BYTE "The number is zero.",0

.code
main PROC

    ; ask for input
    mov  edx, OFFSET promptMsg
    call WriteString

    ; read input
    call ReadInt

    ; =0
    cmp eax, 0
    je  IsZero

    ; >0
    jg  IsPositive

    ; <0
    jl  IsNegative

IsPositive:
    mov edx, OFFSET posMsg
    call WriteString
    jmp EndProgram

IsNegative:
    mov edx, OFFSET negMsg
    call WriteString
    jmp EndProgram

IsZero:
    mov edx, OFFSET zeroMsg
    call WriteString

EndProgram:
    exit
main ENDP

END main
