; RevStr_UserInput.asm


include Irvine32.inc

.data
    MAXSIZE = 50
    prompt1 BYTE "Enter a string: ",0
    resultMsg BYTE "Reversed string: ",0
    aName BYTE MAXSIZE+1 DUP(0)     
    nameSize DWORD 0

.code
main PROC
    mov edx, OFFSET prompt1
    call WriteString
    
    mov ecx, MAXSIZE
    mov edx, OFFSET aName
    call ReadString              
    mov nameSize, eax           

    ; Push characters onto stack
    mov ecx, eax                
    mov esi, 0

L1:
    movzx eax, aName[esi]
    push eax
    inc esi
    loop L1

    ; Pop into the array to reverse
    mov ecx, nameSize
    mov esi, 0

L2:
    pop eax
    mov aName[esi], al
    inc esi
    loop L2

    ; Output reversed string
    mov edx, OFFSET resultMsg
    call WriteString

    mov edx, OFFSET aName
    call WriteString
    call CrLf

    Invoke ExitProcess,0
main ENDP
END main
