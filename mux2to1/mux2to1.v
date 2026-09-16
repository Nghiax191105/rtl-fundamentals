module mux2to1 (
	input wire a,
	input wire b,
	input wire sel,
	output wire y
);

	//Write the MUX logic here
	assign y = sel ? b : a;
endmodule
