module tb_not_gate;

reg a;
wire y;

not_gate dut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("not_gate_wave.vcd");
    $dumpvars(0, tb_not_gate);
    $monitor("time=%0t a=%b y=%b", $time, a, y);

    a = 0; #10;
    a = 1; #10;
    $finish;
end

endmodule