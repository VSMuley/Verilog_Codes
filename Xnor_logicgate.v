//Gate Level Modelling

module gate_xnor (input a,b, output y);
 
 xnor (y, a,b);

endmodule


//Data Flow Level Modelling

module dataflow_xnor (input a,b, output y);
 
 assign y = (a ~^ b);

endmodule 


//Behaviour Level Modelling

module behaviour_xnor (input a,b,clk, output reg y);

always @(posedge clk)
begin
  if ( a == b)
   begin
    y <= 1'b1;
   end

 else
   begin
    y <= 1'b0;
   end
end
endmodule 
