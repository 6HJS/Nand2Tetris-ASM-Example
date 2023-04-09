    @R1
    D=M-1
    @R2
    M=M+D

    @32767
    D=A
    @R0
    M=D

(LOOP)
(CHECK_TERMINATE)
	@R1
	D=M
	@R2
	D=D-M
	@END
	D;JGT
	@R1
	A=M
	D=M
    @ELEM_POS
    D;JGE
	@ELEM_NEG
	0;JMP
(UPDATE)
	@R1
	A=M
	D=M
	@R0
	M=D
(SKIP)
	@R1
	M=M+1
	@LOOP
	0;JMP
(END)
	@END
	0;JMP

(R0_NEG)
    
(R0_POS)
    // subs
    @R1
	A=M
	D=M
	@R0
	D=D-M // substraction, may cause Overflow!
    @SKIP
	D;JGE
    @UPDATE
    0;JMP

(ELEM_NEG)
    @R0
    D=M
    @R0_NEG
    D;JLT
    @UPDATE
    0;JMP

(ELEM_POS)
    @R0
    D=M
    @R0_POS
    D;JGE
    @SKIP
    0;JMP