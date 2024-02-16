`default_nettype none
module r2r_dac_control (
    input wire clk,
    input wire n_rst,
/*    input wire external_enable,
    input wire [3:0] external_control,
    input wire [7:0] divider,
    input wire set_divider,
    */
    output wire [3:0] drive_bit,
//    output wire [7:0] counter
    );

    reg rst;
    reg [3:0] counter;
    assign drive_bit = counter;

    always @(posedge clk or posedge n_rst) begin
        if(n_rst)
            rst <= 1'b0;
        else
            rst <= 1'b1;
    end

    always @(posedge clk) begin
        if(rst)
            counter <= 0;
        else
            counter <= counter + 1;
    end

endmodule
