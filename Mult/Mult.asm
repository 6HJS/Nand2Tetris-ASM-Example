    @sign
    M=0
(CHECK_R1)
    @R1
    D=M
    @ABS_R1
    D;JLT
(CHECK_R2)
    @R2
    D=M
    @ABS_R2
    D;JLT

(ENTRY)
    @R1
    D=M
    @R2
    D=D-M
    @SWAP_R1R2
    D;JLT

(LOOP)
    @R2
    MD=M-1
    @CHECK_SIGN
    D;JLT
    @R1
    D=M
    @R0
    M=M+D
    @LOOP
    0;JMP

(CHECK_SIGN)
    @sign
    D=M
    @END
    D;JEQ
    @R0
    M=-M
    @END
    0;JMP

(END)
    @END
    0;JMP

(ABS_R2)
    @sign
    M=!M
    @R2
    M=-M
    @ENTRY
    0;JMP

(ABS_R1)
    @sign
    M=!M
    @R1
    M=-M
    @CHECK_R2
    0;JMP

(SWAP_R1R2)
    @R1
    D=M
    @temp
    M=D
    @R2
    D=M
    @R1
    M=D
    @temp
    D=M
    @R2
    M=D
    @LOOP
    0;JMP