    @R1 // the address of arr[0]
    D=M-1 // substract 1 because the array starts from arr[0]
    @R2 // the length
    M=M+D // now R2 is the address of the last element

(OUTER_LOOP)
(CHECK_TERMINATE)
    @R1
    D=M
    @R2
    D=D-M
    @FINISH
    D;JGT
    @R1
    D=M
    @R3 // use R3 as the index of the inner loop.
    M=D+1 


(INNER_LOOP)
(CHECK_INNER_END)
    @R3
    D=M
    @R2
    D=D-M
    @INNER_FINISH
    D;JGT
    @R3 // use inner index to locate the element.
    A=M
    D=M // now D contains the element pointed by the inner index.
    @ELEM_POS
    D;JGE
    @ELEM_NEG
    0;JMP
(SWAP) // swap the value pointed by the inner and outer index pointer
    @R1
    A=M
    D=M
    @temp
    M=D
    @R3
    A=M
    D=M
    @R1
    A=M
    M=D
    @temp
    D=M
    @R3
    A=M
    M=D
(SKIP)
    @R3
    M=M+1
    @INNER_LOOP
    0;JMP

(INNER_FINISH)
    @R1
    M=M+1
    @OUTER_LOOP
    0;JMP

(FINISH)
    @R0
    M=-1
(END)
    @END
    0;JMP

(REF_NEG)
    
(REF_POS)
    // subs
    @R3
    A=M
    D=M
    @R1
    A=M
    D=D-M // substraction, may cause Overflow!
    @SKIP
    D;JGE
    @SWAP
    0;JMP

(ELEM_NEG)
    @R1
    A=M
    D=M
    @REF_NEG
    D;JLT
    @SWAP
    0;JMP

(ELEM_POS)
    @R1
    A=M
    D=M
    @REF_POS
    D;JGE
    @SKIP
    0;JMP