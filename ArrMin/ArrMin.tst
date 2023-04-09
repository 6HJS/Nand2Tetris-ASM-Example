load ArrMin.asm,
output-file ArrMin.out,
compare-to ArrMin.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[1000]%D2.9.2 RAM[1001]%D2.9.2 RAM[1002]%D2.9.2 RAM[1003]%D2.9.2 RAM[1004]%D2.9.2 RAM[1005]%D2.9.2 RAM[1006]%D2.9.2;

// Normal case
// {1,2,3,4} 1
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] 1,
set RAM[1001] 2,
set RAM[1002] 3,
set RAM[1003] 4;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;

// {2,1,4,3} 2
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] 2,
set RAM[1001] 1,
set RAM[1002] 4,
set RAM[1003] 3;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;

// {2,4,6,3,3,1,5} 3
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 7,
set RAM[1000] 2,
set RAM[1001] 4,
set RAM[1002] 6,
set RAM[1003] 3;
set RAM[1004] 3;
set RAM[1005] 1;
set RAM[1006] 5;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 7,
output;

//Edge case
//{0,0,0,0} 4
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] 0,
set RAM[1001] 0,
set RAM[1002] 0,
set RAM[1003] 0;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;

//{-2,-1,-4,-3} 5
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] -2,
set RAM[1001] -1,
set RAM[1002] -4,
set RAM[1003] -3;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;

//{-2,1,4,-3} 6
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] -2,
set RAM[1001] 1,
set RAM[1002] 4,
set RAM[1003] -3;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;

//Boundary case
//{20000,1,4,32767} 7
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] 20000,
set RAM[1001] 1,
set RAM[1002] 4,
set RAM[1003] 32767;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;

//{-20000,1,4,-32768} 8
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] -20000,
set RAM[1001] 1,
set RAM[1002] 4,
set RAM[1003] -32768;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;

//{20000,1,4,-32768} 9
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] 20000,
set RAM[1001] 1,
set RAM[1002] 4,
set RAM[1003] -32768;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;

//{-20000,1,4,32767} 10
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] -20000,
set RAM[1001] 1,
set RAM[1002] 4,
set RAM[1003] 32767;
repeat 200 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;