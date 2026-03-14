include Irvine32.inc

.data
    array1 DWORD 10, 5, 20, 8, 15, 30, 2
    arraySize = ($ - array1) / SIZEOF DWORD 

.code
FindMax PROC
    push ebp
    mov  ebp, esp

    push ebx
    push ecx
    push esi

    mov esi, [ebp+8]     
    mov ecx, [ebp+12]    

    mov eax, [esi]       
    add esi, 4           
    dec ecx            

CompareLoop:
    mov ebx, [esi]       
    cmp ebx, eax
    jle SkipUpdate
    mov eax, ebx       

SkipUpdate:
    add esi, 4
    loop CompareLoop

    pop esi
    pop ecx
    pop ebx

    pop ebp
    ret 8                

FindMax ENDP

main PROC
    push arraySize
    push OFFSET array1
    call FindMax 
    call WriteDec
    
    exit
main ENDP

END main
