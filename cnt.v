module cnt (
	input wire clk,
	input wire rst_n,
	output wire flag
);

	reg [25:0] cnt;
	parameter  N_1s = 26'd50_000_000;
	
	always @ (posedge clk or negedge rst_n) begin 
		if (rst_n == 1'd0)
		cnt <= 1'd0;
		else if (cnt >= N_1s - 1'd1)
		cnt <= 26'd0;
		else 
		cnt <= cnt + 1'd1;
	end 
	
	assign flag = (cnt == N_1s-1'd1)?1:0;

endmodule	