include Irvine32.inc

.data
    promptInt BYTE "Enter an integer (0 to stop): ",0
    endMsg    BYTE "Numbers in reverse order:",0

.code
main PROC
    mov ecx, 0

inputLoop:
    mov edx, OFFSET promptInt
    call WriteString

    call ReadInt        ; EAX = user input

    cmp eax, 0          ; 0 = end
    je reverseStart

    push eax            ; push onto stack
    inc ecx             ; count ++
    jmp inputLoop

reverseStart:
    call CrLf
    mov edx, OFFSET endMsg
    call WriteString
    call CrLf

outputLoop:
    cmp ecx, 0
    je Finish

    pop eax
    call WriteDec
    call CrLf

    dec ecx
    jmp outputLoop

Finish:
    Invoke ExitProcess,0
main ENDP
END main
