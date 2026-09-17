module tb_pwm_generator;

	reg clk;
	reg reset;
	reg [3:0] duty;
	wire pwm_out;

	pwm_generator dut (
	.clk(clk),
	.reset(reset),
	.duty(duty),
	.pwm_out(pwm_out)
);	
	//clk
	initial begin
		clk = 0;
	end

	always #5 clk =~clk;

	initial begin
		$dumpfile("pwm_generator.vcd");
		$dumpvars(0, tb_pwm_generator);

		$monitor("time=%0t clk=%b reset=%b duty=%0d pwm_out=%b",
			$time, clk, reset, duty, pwm_out);

		reset = 1;
		duty = 0;
		#10;

		// 0.25
		reset = 0;
		duty = 4;
		#160;

		reset = 1;
		#10;

		//0.5
		reset = 0;
		duty = 8;
		#160;
		
		reset = 1;
		#10;

		// 0.75
		reset = 0;
		duty = 12;
		#160;
		
		$finish;
	end

endmodule
