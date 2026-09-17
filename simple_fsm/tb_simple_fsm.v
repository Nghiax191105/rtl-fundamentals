module tb_simple_fsm;

	reg clk;
	reg reset;
	reg start;
	reg finish;
	wire done;

	simple_fsm dut (
	.clk(clk),
	.reset(reset),
	.start(start),
	.finish(finish),
	.done(done)
);

	//clock
	initial begin
		clk = 0;
	end

	always #5 clk = ~clk;

	//stumulus
	initial begin
		$dumpfile("simple_fsm.vcd");
		$dumpvars(0, tb_simple_fsm);

		$monitor("time=%0t clk=%b rest=%b start=%b finish=%b done=%b",
			$time, clk, reset, start, finish, done);

		reset = 1;
		start = 0;
		finish = 0;

		#10;
		reset = 0;

		#10;
		start = 1;
		#10;

		start = 0;
		#30;

		finish = 1;
		#10;
		finish = 0;

		#30;

		$finish;
	end
endmodule
