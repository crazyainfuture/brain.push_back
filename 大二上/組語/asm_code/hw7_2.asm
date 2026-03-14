INCLUDE Irvine32.inc

.data
msg BYTE "Result = ",0

.code
main PROC

    mov eax, 13         
    mov ebx, 11      
    call BitwiseMultiply

    mov edx, OFFSET msg
    call WriteString
    call WriteDec 
    call Crlf

    exit
main ENDP

BitwiseMultiply PROC
    push ebx
    push edx

    mov esi, eax        
    xor eax, eax        
    mov ecx, 32         

MultiplyLoop:
    test ebx, 1        
    jz SkipAdd
    add eax, esi        

SkipAdd:
    shl esi, 1          
    shr ebx, 1         
    loop MultiplyLoop

    pop ebx
    pop edx
    ret
BitwiseMultiply ENDP

END main
