.extern _debug_dump_registers
.globl dump_registers
.type dump_registers, @function
dump_registers:
subq $(16*8), %rsp

push %r15
push %r14
push %r13
push %r12
push %r11
push %r10
push %r9
push %r8
push %rsp
push %rbp
push %rdi
push %rsi
push %rdx
push %rcx
push %rbx
push %rax

movq %rsp, %rdi
call _debug_dump_registers
addq $(16*8), %rsp
leave
ret

