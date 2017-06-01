#Suma liczb od mniejszego z parametrow (a, b) do wiekszego z tych parametrow. Np. Dla 3 i 5 fukcja zwraca 3+4+5
 
.text
.type sum, @function
.global sum
 
sum:
    mov $0, %rax
    mov %rdi, %rbx
    mov %rsi, %rcx
    cmp %rbx, %rcx
    jg secondIsGreater
    jl firstIsGreater
    jmp theend
   
secondIsGreater:
    sub %rbx, %rcx
    mov %rbx, %rax
    jmp addingSecond
   
firstIsGreater:
    sub %rcx, %rbx
    mov %rcx, %rax
    jmp addingFirst
   
addingSecond:
    inc %rbx
    add %rbx, %rax
    dec %rcx
    cmp $0, %rcx
    jg addingSecond
    jmp theend
   
addingFirst:
    inc %rcx
    add %rcx, %rax
    dec %rbx
    cmp $0, %rbx
    jg addingFirst
    jmp theend
   
theend:
    ret