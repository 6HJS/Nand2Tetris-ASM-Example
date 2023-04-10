load SelectionSort.asm,
output-file Lin10.out,
compare-to Lin10.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[1000]%D2.9.2 RAM[1001]%D2.9.2 RAM[1002]%D2.9.2 RAM[1003]%D2.9.2 RAM[1004]%D2.9.2 RAM[1005]%D2.9.2 RAM[1006]%D2.9.2;
//{20000,1,4,-32768} 9
set PC 0,
set RAM[0] 0,
set RAM[1] 1000,
set RAM[2] 4,
set RAM[1000] 20000,
set RAM[1001] 1,
set RAM[1002] 4,
set RAM[1003] -32768;
repeat 500 {
    ticktock;
}
set RAM[1] 1000,
set RAM[2] 4,
output;