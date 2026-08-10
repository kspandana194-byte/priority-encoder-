`timescale 1ns/1ps

module priority_encoder_tb;

reg [3:0] D;
wire [1:0] Y;
wire valid;

priority_encoder uut (
    .D(D),
    .Y(Y),
    .valid(valid)
);

initial begin
    $monitor("Time=%0t | D=%b | Y=%b | Valid=%b",
              $time, D, Y, valid);

    D = 4'b0000; #10;
    D = 4'b0001; #10;
    D = 4'b0010; #10;
    D = 4'b0011; #10;
    D = 4'b0100; #10;
    D = 4'b0101; #10;
    D = 4'b0111; #10;
    D = 4'b1000; #10;
    D = 4'b1010; #10;
    D = 4'b1101; #10;
    D = 4'b1111; #10;

    $finish;
end

endmodule