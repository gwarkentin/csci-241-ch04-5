# csci-241-ch04-5
Fibonacci_Numbers

Write a program that uses a loop to calculate the first 12 values in the Fibonacci number sequence { 1,1,2,3,5,8,13,21,34,55,89,144}. Also see C/C++ Program Fibonacci numbers
First, place each value in the EAX register and display it with a call DumpRegs statement inside the loop, as run this:
   EAX=00000001  EBX=7FFDF000  ECX=00000000  EDX=0040100A
   ESI=00000000  EDI=00000000  EBP=0012FF94  ESP=0012FF8C
   EIP=0040103A  EFL=00000246  CF=0  SF=0  ZF=1  OF=0  AF=0  PF=1
   ... ... ... 
   ... ... ...
   EAX=00000090  EBX=00000037  ECX=00000001  EDX=00000059
   ESI=00000000  EDI=00000000  EBP=0012FF94  ESP=0012FF8C
   EIP=00401052  EFL=00000216  CF=0  SF=0  ZF=0  OF=0  AF=1  PF=1
Press any key to continue ...
Second, modify your code to save each Fibonacci number into memory, a BYTE array. You call DumpMem to display your result without DumpRegs. Also call WriteString to show "First 12 Fibonacci numbers:"
First 12 Fibonacci numbers:

Dump of offset 00405020
-------------------------------
01 01 02 03 05 08 0D 15 22 37 59 90
Press any key to continue ...
As a basic rule, if you can use registers, don’t use memory either indexed or indirect operands. In this exercise, there are enough registers to use. Only operation for memory is to move a calculated Fibonacci number into your Fibonacci array. If well designed, only 4 or 5 instructions necessary in the loop body. When done, submit the final implementation without DumpRegs.
