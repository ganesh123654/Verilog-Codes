
module HA_TB;

    // Testbench signals
    logic t_a;
    logic t_b;
    logic t_sum;
    logic t_carry;

    // Instantiate Design Under Test (DUT)
    Half_adder dut (
        .a(t_a),
        .b(t_b),
        .sum(t_sum),
        .carry(t_carry)
    );
initial begin

$dumpfile("HA_TB.vcd");
$dumpvars(0,HA_TB);
end

    // Stimulus block
    initial begin
        // Display headers for logs
        $monitor("Time = %0t | Inputs: a = %b, b = %b | Outputs: sum = %b, carry = %b", 
                 $time, t_a, t_b, t_sum, t_carry);

        // Apply all 4 test vectors
        t_a = 0; t_b = 0; #10;
        t_a = 0; t_b = 1; #10;
        t_a = 1; t_b = 0; #10;
        t_a = 1; t_b = 1; #10;

        // Terminate simulation
        $finish;
    end

endmodule