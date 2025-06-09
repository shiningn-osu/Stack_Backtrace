# Stack_Backtrace
Stack backtrace and Register dump, Assignment 3 for CS 271

## Overview

This project implements a stack backtrace and general-purpose register dump for x86-64 Linux using a combination of C and assembly.

The two main functions implemented are:

- `dump_registers()` — Prints the values of 16 general-purpose registers in both decimal and hexadecimal.
- `dump_backtrace()` — Walks the call stack using frame pointers and uses `dladdr()` to resolve and print symbol names and file paths.

## Directory Structure

Stack_Backtrace/
├── include/ # Header file (debug.h)
├── lib/ # Compiled object archive (libdebug.o) ----------------------- due to github not allowing empty files this may need to be added manually by user. 
├── src/ # Source code (C + Assembly)
│ ├── debug.c
│ └── asm/
│   │── dump_registers.s
│   │── dump_backtrace.s
├── test/ # Test program (main.c)
├── makefile # Build instructions
├── README.md # This file

## Building the Project

Run the following from the project root directory:

```bash
mkdir lib
make
```

This will:

Compile the C and assembly source files

Combine them into lib/libdebug.o

Link the test program at test/main

Automatically run the test executable

Running the Program After building:

```bash
./test/main
```

You should see output like:

less
rax    42 (0x2a)
rbx    0 (0x0)
rcx    4 (0x4)
rdx    3 (0x3)
rsi    2 (0x2)
rdi    1 (0x1)
rbp    140721147591600 (0x7ffc3203bbb0)
rsp    140721147591568 (0x7ffc3203bb90)
r8     5 (0x5)
r9     6 (0x6)
r10    140721147590928 (0x7ffc3203b910)
r11    515 (0x203)
r12    140721147591928 (0x7ffc3203bcf8)
r13    1 (0x1)
r14    125415370539008 (0x72108a9c4000)
r15    102788977790424 (0x5d7c6c820dd8)

  0: [5d7c6c81e149] g () ./main
  1: [5d7c6c81e17d] f () ./main
  2: [5d7c6c81e1ae] main () ./main
  3: [0] (null) () /usr/lib/libc.so.6
  4: [72108a76e6e0] __libc_start_main () /usr/lib/libc.so.6
  5: [5d7c6c81e050] _start () ./main

## Authors

Aron Meraz (meraza@oregonstate.edu), Nicholas Shininger (shiningn@oregonstate.edu), America X. Pacheco (pachecam@oregonstate.edu)
Oregon State University
