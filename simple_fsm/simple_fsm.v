module simple_fsm (
	input wire clk,
	input wire reset,
	input wire start,
	input wire finish,
	output reg done
);
	reg [1:0] state;
	reg [1:0] next_state;

	localparam
		IDLE = 2'b00,
		RUN = 2'b01,
		DONE = 2'b10;

	always @(posedge clk) begin
		if(reset)
			state <= IDLE;
		else
			state <= next_state;
	end

	always @(*) begin
		next_state = state;

		case(state)
			IDLE: begin
				if (start)
					next_state = RUN;
			end

			RUN: begin
				if (finish)
					next_state = DONE;
			end

			DONE: begin
				next_state = IDLE;
			end

			default: begin
				next_state = IDLE;
			end
		endcase

	end
 
	always @(*) begin
		if (state == DONE)
			done = 1'b1;
		else
			done =1'b0;
	end

endmodule
