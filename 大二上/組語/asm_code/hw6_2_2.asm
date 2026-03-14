include Irvine32.inc

.code
main PROC
    mov eax, 10        

    .repeat
        call WriteDec  
        call Crlf
        dec eax        
    .until eax == 0

    exit
main ENDP
END main
