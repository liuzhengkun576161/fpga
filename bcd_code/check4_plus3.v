module check4_plus3(
    input   wire    [3:0]   data_in,
    output  wire    [3:0]   data_out
);

    assign data_out = (data_in > 4)?(data_in + 3 ): data_in;

    
endmodule
