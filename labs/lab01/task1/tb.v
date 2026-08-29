// CS-215 Lab 01 Task 1: AND Gate Testbench
`timescale 1ns/1ps

module tb;
  reg a;
  reg b;
  wire y;

  // Instantiate Design Under Test
  dut uut (
    .a(a),
    .b(b),
    .y(y)
  );

  // Waveform dump configuration
  string vcd_file;
  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, uut);
    end
  end

  initial begin
    $display("Starting AND gate testbench...");

    // test case 1 = 0 AND 0 = 0
    a=1'b0; b=1'b0; #10;
    if (y!==1'b0) $display("FAIL: a=%b, b=%b | Expected y=0, got y=%b", a,b,y);

    // test case 2 = 0 AND 1 = 0
    a=1'b0; b=1'b1; #10;
    if (y!==1'b0) $display("FAIL: a=%b, b=%b | Expected y=0, got y=%b", a,b,y);

     // test case 3 = 1 AND 0 = 0
    a=1'b1; b=1'b0; #10;
    if (y!==1'b0) $display("FAIL: a=%b, b=%b | Expected y=0, got y=%b", a,b,y);


    // test case 4 = 1 AND 1 = 1
    
    a=1'b1; b=1'b1; #10;
    if (y!==1'b1) $display("FAIL: a=%b, b=%b | Expected y=1, got y=%b", a,b,y);


    
   $display("AND gate testing completed.");

  

    
    
    $finish;

  end

endmodule
