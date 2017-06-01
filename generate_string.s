  .text
  .type generate_string, @function
  .global generate_string

generate_string:
    mov %rdi, %rax
    cmp $0, %rcx
    je no_inc
    mov $1, %rcx

no_inc:
    mov $0, %rdi #wybeirasz to, bo jest pierwsze wolne

loop: 
    cmp %rdx, %rdi
    jge end
    mov %sil, (%rax, %rdi, 1) #move
    add %rcx, %rsi
    inc %rdi
    jmp loop

end:
    movb $0x00, (%rax, %rdx, 1) #movb bo 8 bitow
    ret


