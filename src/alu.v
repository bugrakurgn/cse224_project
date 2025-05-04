module alu (
  input [7:0] din1,
  input [7:0] din2,
  input [2:0] op,
  output reg [7:0] dout
);

wire [7:0] nin, aout, oout, xout, add, sub, mult;

assign nin   = ~din1;
assign aout  = din1 & din2;
assign oout  = din1 | din2;
assign xout  = din1 ^ din2;
assign mult  = din1[3:0] * din2[3:0];
assign add   = din1 + din2;
assign sub   = din1 - din2;

always @(*) begin
  case(op)
    3'b000: dout = nin;
    3'b001: dout = oout;
    3'b010: dout = xout;
    3'b011: dout = aout;
    3'b100: dout = mult;
    3'b101: dout = add;
    3'b110: dout = sub;
    default: dout = 8'b0;
  endcase
end

endmodule