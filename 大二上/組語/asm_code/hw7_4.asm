INCLUDE Irvine32.inc

.data
plaintext BYTE "Rain falls",0
key       BYTE -2, 4, 1, 0, -3
keyLen    = LENGTHOF key

msg1 BYTE "Plaintext : ",0
msg2 BYTE "Encrypted : ",0

.code
main PROC

    mov edx, OFFSET msg1
    call WriteString
    mov edx, OFFSET plaintext
    call WriteString
    call Crlf

    mov esi, OFFSET plaintext
    mov edi, OFFSET key
    mov ecx, LENGTHOF plaintext - 1  
    call EncryptString

    mov edx, OFFSET msg2
    call WriteString
    mov edx, OFFSET plaintext
    call WriteString
    call Crlf

    exit
main ENDP

;--------------------------------
; key[i] > 0  → RotateLeft (ROL)
; key[i] < 0  → RotateRight (ROR)
; key[i] = 0  → 不旋轉
;---------------------------------
EncryptString PROC
    pushad
    xor ebx, ebx     

EncryptLoop:
    mov al, [esi]      
    mov dl, [edi + ebx] 

    cmp dl, 0
    je  NoRotate

    jl  RotateRight

RotateLeft:
    mov cl, dl
    rol al, cl
    jmp Store

RotateRight:
    neg dl
    mov cl, dl
    ror al, cl
    jmp Store

NoRotate:
    ; AL 不變

Store:
    mov [esi], al      

    inc esi
    inc ebx
    cmp ebx, keyLen    
    jne Next
    xor ebx, ebx

Next:
    loop EncryptLoop

    popad
    ret
EncryptString ENDP

END main
