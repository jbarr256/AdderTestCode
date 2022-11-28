module fullAdder (A, B, cin,sum,c);
	input A,B,cin;
	output logic sum,c;
	assign sum = A^B^cin;
	assign c = (A&B)|(cin&(A|B));
endmodule

module FA_testbench();
	logic a,b,cin,sum,cout;
	FA dut (cin,a,b,sum,c);
	integer i;
	
	initial begin
		for(i = 0; i<2**3;i = i+ 1) begin
			{a,b,cin} = i; #10;
		end
		
	end
	
endmodule