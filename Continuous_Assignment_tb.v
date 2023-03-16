module cont_assign_tb();

//Inputs and outputs
reg a,b,c;
reg clk;
wire w,x,y,z;

//Instantiate UUT
cont_assign UUT(a,b,c,w,x,y,z);

initial begin

a = 0; b = 0; c = 0;
clk = 1;
#10 clk = ~clk;
$monitor ($time, "a=%b, b=%b,c=%b,w=%b, x=%b, y=%b, z=%b " , a,b,c,w,x,y,z);
end

always @(posedge clk)
begin
#10 a = 0; b = 1; c = 1;
#10 a = 1; b = 0; c = 1;
#10 a = 0; b = 1; c = 0;

#100 $finish;
end


endmodule
