module pwm_generator (
	input wire clk,
	input wire reset,
	input wire [3:0] duty,
	output wire pwm_out
);

	reg [3:0] counter;

	always @(posedge clk) begin
		if(reset)
			counter <= 4'b0000;
		else
			counter <= counter + 1'b1;
	end

	assign pwm_out = (counter < duty) ? 1 : 0;

endmodule
