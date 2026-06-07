module tb;

reg clk;
reg rst;
wire [1:0] light;

traffic_light uut(
    .clk(clk),
    .rst(rst),
    .light(light)
);

initial begin
    $dumpfile("traffic.vcd");
    $dumpvars(0, tb);

    clk = 0;
    rst = 1;

    #10 rst = 0;

    #100 $finish;
end

always #5 clk = ~clk;

endmodule




