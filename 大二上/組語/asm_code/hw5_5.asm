include Irvine32.inc

.data
    msg BYTE "Value: ", 0

.code
main PROC
    mov eax, 1111h
    mov ebx, 2222h
    mov ecx, 3333h
    mov edx, 4444h
    mov esi, 5555h
    mov edi, 6666h
   
    pushad        

    mov ecx, 8   

print_loop:
    pop eax       

    mov edx, OFFSET msg
    call WriteString

    ; print the popped value in hex
    call WriteHex

    ; print newline
    call Crlf

    loop print_loop

    exit
main ENDP
END main
