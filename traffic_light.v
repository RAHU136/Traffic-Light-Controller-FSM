
module traffic_light(
    input clk,
    input rst,
    output reg [1:0] light
);

reg [2:0] count;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        light <= 2'b00;
        count <= 0;
    end
    else begin
        count <= count + 1;

        if (count == 3) begin
            case(light)
                2'b00: light <= 2'b01;
                2'b01: light <= 2'b10;
                2'b10: light <= 2'b00;
            endcase
            count <= 0;
        end
    end
end

endmodule



