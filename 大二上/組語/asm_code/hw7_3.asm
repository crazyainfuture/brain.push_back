INCLUDE Irvine32.inc

.data
num1    BYTE 12h, 34h, 56h
num2    BYTE 00h, 78h, 44h
result  BYTE 3 DUP(0)
msg     BYTE "Result: ",0

.code
main PROC

    mov esi, OFFSET num1
    mov edi, OFFSET num2
    mov edx, OFFSET result
    mov ecx, LENGTHOF num1

    call AddPacked

    mov edx, OFFSET msg
    call WriteString

    mov esi, OFFSET result
    mov ecx, LENGTHOF result

PrintLoop:
    movzx eax, BYTE PTR [esi]
    call WriteHex
    mov al, ' '
    call WriteChar
    inc esi
    loop PrintLoop

    exit
main ENDP

AddPacked PROC
    pushad

    add esi, ecx         ; ESI = offset num1
    add edi, ecx         ; EDI = offset num2
    add edx, ecx         ; EDX = offset result
    dec esi
    dec edi
    dec edx

    clc                 

AddLoop:
    mov al, [esi]
    adc al, [edi]       
    daa                 
    mov [edx], al

    dec esi
    dec edi
    dec edx
    loop AddLoop

    popad
    ret
AddPacked ENDP

END main
