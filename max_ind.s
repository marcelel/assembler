  .text
  .type maxmin, @function
  .global maxmin
  
maxmin:
 
  mov $1, %rax # indeks max
  mov %rdi, %rbx # wartosc max
  cmp %rbx, %rsi # porownujemy 2 argument - teraz mamy pewnosc ze min=max wiec starczy jedno cmp
  jg greater1 # jak rsi > max to skacz
  jl less1 # jak rsi < max to skacz
  mov $0, %rax # jak rsi == max to zwroc 0 i return
  ret
 
greater1:
  mov $2, %rax # zapisujemy wartosc wieksza od max do eax
  mov %rsi, %rbx
  jmp less1
 
less1:
  cmp %rbx, %rdx
  jg greater2 # jak rsi > max to skacz
  jl less2 # jak rsi < max to skacz
  mov $0, %rax # jak rsi == max to zwroc 0 i return
  ret
 
greater2:
  mov $3, %rax
  mov %rdx, %rbx
  jmp less2
 
less2:
  cmp %rbx, %rcx
  jg greater3
  jl less3
  mov $0, %rax
  ret
 
greater3:
  mov $4, %rax
  jmp less3
 
less3:
  ret