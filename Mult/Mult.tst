//header
load Mult.asm,
output-file Mult.out,
compare-to Mult.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

//Normal cases
// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 2,
set RAM[2] 2;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] 2,
set RAM[2] 2,
output;

// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 2,
set RAM[2] 3;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] 2,
set RAM[2] 3,
output;

// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 1,
set RAM[2] 4;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] 1,
set RAM[2] 4,
output;

//Edge cases
// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 10;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] 0,
set RAM[2] 10,
output;

// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 10,
set RAM[2] 0;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] 10,
set RAM[2] 0,
output;

// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 0;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] 0,
set RAM[2] 0,
output;

// set input
set PC 0,
set RAM[0] 0,
set RAM[1] -3,
set RAM[2] 5;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] -3,
set RAM[2] 5,
output;

// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 3,
set RAM[2] -5;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] 3,
set RAM[2] -5,
output;

// set input
set PC 0,
set RAM[0] 0,
set RAM[1] -7,
set RAM[2] -5;

// loop
repeat 200 {
    ticktock;
}

//restore input in case modified
set RAM[1] -7,
set RAM[2] -5,
output;

//Boundary cases
// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 31,
set RAM[2] 1057;

// loop
repeat 2000 {
    ticktock;
}

//restore input in case modified
set RAM[1] 31,
set RAM[2] 1057,
output;

// set input
set PC 0,
set RAM[0] 0,
set RAM[1] 32,
set RAM[2] -1024;

// loop
repeat 2000 {
    ticktock;
}

//restore input in case modified
set RAM[1] 32,
set RAM[2] -1024,
output;
