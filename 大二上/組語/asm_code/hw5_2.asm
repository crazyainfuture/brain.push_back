

include Irvine32.inc

.code
main PROC
    
    mov eax, 5              
    call Factorial          

    push eax                
   
    pop eax                 
    call WriteDec           
    call Crlf
    
    ;6!
    mov eax, 6              
    call Factorial          

    push eax                
   
    pop eax                 
    call WriteDec           
    call Crlf
    
	exit
main ENDP

Factorial PROC
    push ebx
    push ecx
    push edx

   
    cmp eax, 1         
    jbe IsOneOrZero    

    mov ecx, eax       
    dec ecx            
    mov ebx, eax       

L1:
    mov eax, ebx       
    mul ecx            
    mov ebx, eax       

    loop L1            

    jmp EndProc        

IsOneOrZero:
    mov eax, 1

EndProc:
    pop edx
    pop ecx
    pop ebx
    
    ret            

Factorial ENDP

END main