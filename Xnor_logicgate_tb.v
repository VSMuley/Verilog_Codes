module xnor_tb();

//Inputs and Outputs
reg a,b;
reg clk;
wire y;

//Instantiate UUT
behaviour_xnor GXN (a,b,clk,y);
//dataflow_xnor GXN (a,b,y);
//gate_xnor GXN (a,b,y);

initial 
begin

//Initialize inputs
clk = 1; a = 0; b = 0;
#30 clk = ~clk;

$monitor($time,"a= %b, b= %b, y= %b",a,b,y);

#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;
#100 $finish;

end
endmodule
