//DOWN COUNTER
module downcounter (
  input clk,
  input rst,
  output reg [2:0] cnt
);

  wire [2:0] next_cnt;

  assign next_cnt = cnt - 1'b1;  // Decrement by 1

  always @(posedge clk or negedge rst) begin
    if (!rst) begin
      cnt <= 3'b0;
    end else begin
      cnt <= next_cnt;
    end
  end

endmodule