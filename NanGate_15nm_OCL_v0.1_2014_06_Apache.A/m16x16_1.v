module m16x16(a,b,y);
   input [15:0] a,b;
   output [31:0] y;
   assign y = a*b;
endmodule // m16x16
