`timescale 1ns/1ps
module bcd_code_head (
	input	[7:0]    num_in,
	output	[11:0]   num_out
);


	wire		[19:0]   temp1;
	wire		[19:0]   temp2;
	wire		[19:0]   temp3;
	wire		[19:0]   temp4;
	wire		[19:0]   temp5;
	wire		[19:0]   temp6;
	wire		[19:0]   temp7;
	wire		[19:0]   temp8;


	left_drier               left_drier_inst1(
	.data_in                  ({(12'd0),num_in}),
	.data_out                     (temp1)
	
	);
	
	left_drier               left_drier_inst2(
	.data_in                 	  (temp1),
	.data_out                     (temp2)
	
	);
	left_drier               left_drier_inst3(
	.data_in                  	  (temp2),
	.data_out                     (temp3)
	
	);
	left_drier               left_drier_inst4(
	.data_in                      (temp3),
	.data_out                     (temp4)
	
	);
	left_drier               left_drier_inst5(
	.data_in                      (temp4),
	.data_out                     (temp5)
	
	);
	left_drier               left_drier_inst6(
	.data_in                      (temp5),
	.data_out                     (temp6)
	
	);
	left_drier               left_drier_inst7(
	.data_in                      (temp6),
	.data_out                     (temp7)
	
	);
	left_drier               left_drier_inst8(
	.data_in                      (temp7),
	.data_out                     (temp8)
	
	);
	assign    num_out = temp8[19:8] ;


endmodule
