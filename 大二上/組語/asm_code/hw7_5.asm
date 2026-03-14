INCLUDE Irvine32.inc

.data
msg BYTE "GCD = ",0

.code
main PROC

    mov eax,48
    mov ebx,16
    call GCD

    mov edx, OFFSET msg
    call WriteString
    call WriteDec 
    call Crlf

    exit
main ENDP

GCD PROC
    push ebx 
    push edx

    test eax,eax
    jns X_Pos
    neg eax

X_Pos:
    test ebx,ebx
    jns Y_Pos
    neg ebx
    
Y_Pos:

GCD_Loop:
    cdq            
    idiv ebx    
    mov eax, ebx   
    mov ebx, edx    

    test ebx, ebx
    jg GCD_Loop   

    pop ebx 
    pop edx
    ret
GCD ENDP

END main