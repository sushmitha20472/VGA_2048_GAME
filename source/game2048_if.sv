interface game2048_if(input bot clk,rst_n);

logic ena;

logic [7:0] ui_in;
logic [7:0] uio_in;
logic [7:0] uo_out;
logic [7:0] uio_out;
logic [7:0] uio_oe;

clocking drv_cb @(posedge clk);
default input #1step output #1step;

output rst_n;
output ena;
output ui_in;
output uio_in;

input uo_out;
input uio_out;
input uio_oe;
endclocking

clocking mon_cb @(posedge clk);
default input #1step;
input rst_n;
input ena;
input ui_in;
input uio_in;
input uo_out;
input uio_out;
input uio_oe;
endclocking

endinterface

