# L-RevC
Tutorial for Reversing C code

Compile Code
------

```bash
gcc -o app.exe app.c
```

	* -o : output 

```bash
gcc -S -o app.s app.c 
```
* -S : stop after the stage of compilation proper; do not assemble.

	* -S : stop after the stage of compilation proper; do not assemble.


```bash
gcc -ggdb -o app-b.exe app.c 
```
*
	* -ggdb : Produce debugging info for use by GDB. 





Dump from binary
------

```bash
objdump -S --disassemble app.exe > app.dump
```

	* -S : source, display source code intermixed with disassembly 
	* --disassemble : display assembler mnemonics for the machine instructions from app.exe (objfile)

```bash
objdump -M intel -S --disassemble app.exe > app-i.dump 
```

	* -M : specific info to the disassembler
	* intel: syntax mode, "att" for AT&T syntax mode


Debug binary
------
```bash
gdb -q ./app-b.exe
```
	* -q: quiet, do not print the intro and copyright messages.

	Commands for GDB
	* q: quit
	* h | help break

	Commands for Static Analysis:
	* l | list 1 : list code #requires: --ggdb
	* r | run <arg>: run program
	* disass | disassemble <function> : disassemble a function

	Commands for Dynamic Analysis:
	* b | break <line> : set a break point
	* s | step
	* c | continue : continue program execution
	* print <variable name>
	* i r | info registers : dump all registers in memory

	Comands for memory inspection:
	* x/<FMT><ADDRESS> : examine memory; FMT = Format
	* x/10xb 0xBFFFF450
	* x/10cb $edi





Finding Dependencies (Shared Object)
------

```bash
readelf -d app.exe | grep 'NEEDED'
```

	* -d : dynamic, displays the content of the file's dynamic section. 


```bash
objdump -p app.exe | grep NEEDED
```

	* -p : private headers, print info specific to the obj file format. 

```bash
ldd app.exe
```

links

