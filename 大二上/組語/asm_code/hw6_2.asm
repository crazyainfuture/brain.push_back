include Irvine32.inc

.data
sum DWORD 0        

.code
main PROC
    mov eax, 1     
    mov sum, 0    

    .while eax <= 10
        add sum, eax   
        inc eax        
    .endw
 
    mov eax, sum
    call WriteDec
    call Crlf

    exit
main ENDP
END main
