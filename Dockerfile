FROM ubuntu
RUN apt update
RUN apt upgrade -y
RUN apt install gcc-multilib nasm gdb -y
COPY prog-asm.asm .
COPY prog-c.c .
RUN nasm -f elf prog-asm.asm
RUN ld -m elf_i386 prog-asm.o -o prog-asm
RUN gcc prog-c.c -o prog-c
RUN /bin/bash
