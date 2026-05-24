// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

@KBD
D=A
@TOBLACK
M=D
@TOWHITE
M=D
(LOOP)
	@KBD
	D=M
	@BLACK
	D;JNE
	@SCREEN
	D=A
(TOWHITE)
	A=D
	M=0
	D=D+1
	@TOWHITE
	D-M;JNE
	@LOOP
	0;JMP
(BLACK)
	@SCREEN
	D=A
(TOBLACK)
	A=D
	M=-1
	D=D+1
	@TOBLACK
	D-M;JNE
	@LOOP
	0;JMP
