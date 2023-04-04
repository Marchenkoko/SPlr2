.data
print_format:
    .string "%d\n"
array:
    .long 238, 42, 134, 168, 4, 85, 171, 182, 15
array_end:

.text
    .globl main
.type main, @function

main:
    movl $0, %ecx
    movl $array, %ebx
    movl (%ebx), %eax

    jmp check_end_array
 oop:
    and $64, %eax
    cmpl $64, %eax
    jne less
    movl (%ebx), %eax
    shr $1, %eax
    movl %eax, (%ebx)
less:
    add (%ebx), %ecx 
    addl $4, %ebx
    movl (%ebx), %eax

check_end_array:
    cmpl $array_end, %ebx
    jne  oop

    push %ecx
    push $print_format
    call printf
    addl $8, %esp
    movl $0, %ecx
    movl $0, %ebx
    movl $0, %eax
    ret
