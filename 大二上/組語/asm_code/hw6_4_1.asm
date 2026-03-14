include Irvine32.inc

.data
num        DWORD 500
msgIn      BYTE " is within the range (100-1000)", 0
msgOut     BYTE " is out of the range (100-1000)", 0

.code
main PROC
    mov eax, num

    cmp eax, 100
    jl  OutOfRange

    cmp eax, 1000
    jg  OutOfRange

    call WriteDec
    mov edx, OFFSET msgIn
    call WriteString
    jmp EndProgram

OutOfRange:
    mov edx, OFFSET msgOut
    call WriteString

EndProgram:
    call Crlf
    exit
main ENDP
END main
