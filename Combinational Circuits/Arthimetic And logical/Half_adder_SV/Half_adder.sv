module Half_adder (
    input  logic a,     // First 1-bit input
    input  logic b,     // Second 1-bit input
    output logic sum,   // 1-bit Sum output
    output logic carry  // 1-bit Carry output
);

    // Sum logic: High if only one input is high
    assign sum   = a ^ b;
    
    // Carry logic: High only if both inputs are high
    assign carry = a & b;

endmodule