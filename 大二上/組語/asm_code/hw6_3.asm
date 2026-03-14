include Irvine32.inc

.data
msgEqual    BYTE "Two numbers are equal", 0
msgEaxBig   BYTE "EAX is greater than EBX", 0
msgEbxBig   BYTE "EBX is greater than EAX", 0

.code
main PROC
    mov eax, 20
    mov ebx, 10

    cmp eax, ebx
    je  Equal        
    ja  EaxGreater   
    jb  EbxGreater  

Equal:
    mov edx, OFFSET msgEqual
    call WriteString
    jmp EndProgram

EaxGreater:
    mov edx, OFFSET msgEaxBig
    call WriteString
    jmp EndProgram

EbxGreater:
    mov edx, OFFSET msgEbxBig
    call WriteString

EndProgram:
    exit
main ENDP
END main
