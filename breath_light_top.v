module breath_light_top (
    input wire clk,
    input wire rst_n,
    output wire [7:0] led
);

    wire flag;

    led_drive                    led_drive_inst  (
    . clk                            (clk  ),
    . rst_n                          (rst_n),
    . flag                           (flag ), 
    . led                            (led  )
    );
    cnt                               cnt_inst (
	. clk                               (clk   ),
	. rst_n                             (rst_n ),
	. flag                              (flag  )   
    );
   
    
endmodule