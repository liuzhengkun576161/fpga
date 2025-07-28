module   left_drier(
	input   wire	[19:0]     data_in,
	output  wire	[19:0]     data_out

);


	wire   [3:0]   a;
	wire   [3:0]   b;
	wire   [3:0]   c;
	

	check4_plus3   check4_plus3_inst_1(
	.data_in		(data_in[19:16]),
	.data_out             (a)
	

);
	
	check4_plus3   check4_plus3_inst_2(
	.data_in		(data_in[15:12]),
	.data_out             (b)
	

);

	check4_plus3   check4_plus3_inst_3(
	.data_in	    (data_in[11:8]),
	.data_out             (c)
	

);


   assign      data_out = {a[2:0],b,c,data_in[7:0],1'd0};




endmodule
