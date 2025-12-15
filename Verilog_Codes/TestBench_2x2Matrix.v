module testtt;
// Inputs 
reg [15:0] a; 
// Outputs 
wire [15:0] b; 
wire [15:0] r; 
// Instantiate the Unit Under Test (UUT) 
multiplication uut ( 
.a(a),  
.b(b),  
.r(r) 
); 
initial begin 
// Initialize Inputs 
a = 16'b0001001000010010; 
// Wait 100 ns for global reset to finish 
#100; 
// Add stimulus here 
end 
endmodule
