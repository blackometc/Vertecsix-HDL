module counter (
    input clk,              // Clock signal
    input rst,              // Reset signal
    output reg [3:0] count  // 4-bit count output
);

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'b0000;   // Reset the counter to 0
    else
        count <= count + 1; // Increment the counter by 1
end

endmodule