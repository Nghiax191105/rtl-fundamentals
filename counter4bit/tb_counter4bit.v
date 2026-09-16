module tb_counter4bit;

	reg clk;
	reg reset;
	wire [3:0] count;

	counter4bit dut (
		.clk(clk),
		.reset(reset),
		.count(count)
	);

	initial begin
		clk = 0;
	end

	always #5 clk = ~clk;

	initial begin
		$dumpfile("counter4bit.vcd");
		$dumpvars(0, tb_counter4bit);

		$monitor("time=%0t clk=%b reset=%b count=%b",
			$time, clk, reset, count);
		reset = 1;
		#12;

		reset = 0;
		#180;

		$finish;

	end

endmodule
