.type change_str,@function
.global change_str

.equ diff, 'A' - 'a'
.text
change_str:
  MOV %rdi, %rax
  MOV $0, %r8   #zapis
  MOV $0, %r9   #odczyt
  JMP no_inc


loop:
  INC %r8
  inc %r9

no_inc:
  CMP $0, (%rax,%r9,1)
  JE end
  MOV (%rax,%r9,1),%dl
  MOV %dl,(%rax,%r8,1)
  CMPB $' ',%dl
  JE space
  CMP $0, %rsi
  JE loop
  CMPB $'a',%dl
  JL loop
  CMPB $'z',%dl
  JG loop
  ADD $diff, (%rax,%r8,1)
  JMP loop

space:
  inc %r9
  CMPB $' ', (%rax,%r9,1)
  JE space
  INC %r8
  JMP no_inc






end:
  MOVB $0, (%rax,%r8,1)
  RET
