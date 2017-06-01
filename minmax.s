  .text
  .type minmaxa, @function
  .global minmaxa

minmaxa:

  mov $1, %rax # w edi bedziemy przechowywac min w eax max
  cmp %rax, %rsi # porownujemy 2 argument - teraz mamy pewnosc ze min=max wiec starczy jedno cmp
  jl less1 # jak rsi < max to skacz
  mov $2, %rax # jak nie to przypisz max = rsi
  jmp cnt # skocz
less1:
  mov %rsi, %rdi # no skoro nie jest wieksze to bedzie mniejsze (albo równe co nic nie zmieni) wiec przypisujemy esi do min
cnt:

  # teraz juz jest opcja ze min != max wiec robimy 2 sprawdzenia cmp
  cmp %rax, %rdx # najpierw z maxem
  jnge less2 # jak rdx jest mniejsze albo rowne max to dalej
  mov $3, %rax # jak nie to przypisz do max
less2:
  cmp %rdi, %rdx # teraz z minimalna wartoscia
  jnle more2 # jak rdx jest wieksze badz rowne to dalej
  mov %rdx, %rdi # jak nie to przypisz do min
more2:

  #and again...
  cmp %rax, %rcx
  jnge less3
  mov $4, %rax
less3:
  cmp %rdi, %rcx
  jnle more3
  mov %rcx, %rdi
more3:

  %rax - %rdi #warosc zwracana (eax) = max (eax) - min (edi)
  ret 