`timescale 1s/100ms
`include "adder_substractor.v"


module test;
    reg [31:0] a,b;
    reg m;
    wire [31:0] s;
    wire v,c;
    
    adder_substractor32 adr32(a,b,m,s,v,c);
    initial
        begin
            $dumpfile("mips.vcd");//creates vcd file for visual simulation
            $dumpvars(0,test);//dump signals 
            a=5'd16; b=5'd14; m=0; #10; //#10 time segment shifting
            a=5'd32; b=5'd44; m=0; #10;
            a=5'd14; b=5'd25; m=0; #10;
            a=5'd20; b=5'd15; m=1; #10;
            a=5'd30; b=5'd12; m=1; #10;
            a=5'd14; b=5'd5; m=1; #10;
            $finish;
        end
endmodule