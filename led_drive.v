module led_drive (
    input wire clk,
    input wire rst_n,
    input wire flag,
    output reg [7:0] led
);

    

    always @ (posedge clk or negedge rst_n) begin
        if (rst_n == 1'd0)
            led <= 8'b11111111;       
        else if (flag == 1)
            led <= ~led;
            else
            led <= led;
    end
    
endmodule