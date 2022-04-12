`timescale 1ns / 1ps

module compliment_TB;

reg signed [63:0] a,b;
wire signed [63:0] y;

bitcompliment uut(
    .a(a),
    .y(y)
);

initial begin 
		$dumpfile("bitcompliment.vcd");
     	$dumpvars(0,compliment_TB);
		
    a = 64'b1000000000000000000000000000000000000000000000000000010000000101;
    #20;
    a = 64'b1111111111110011111001110011111100000000000000000000000000000000;
    #20;
end 
    initial begin
        $monitor("a=%d y=%d\n",a,y);
       end

endmodule