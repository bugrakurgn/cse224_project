//20210702025
module regfile(
    input  wire        CLK,
    input  wire        WE3,
    input  wire [4:0]  A1,
    input  wire [4:0]  A2,
    input  wire [4:0]  A3,
    input  wire [31:0] WD3,
    output reg  [31:0] RD1,
    output reg  [31:0] RD2
);

    reg [31:0] registers [0:31];
    integer i;

    initial begin
        for (i = 0; i < 32; i = i + 1) begin
            registers[i] = 32'd0;
        end
    end

    always @(posedge CLK) begin
        if (WE3) begin
            registers[A3] <= WD3;
        end
    end

    always @(*) begin
        RD1 = registers[A1];
        RD2 = registers[A2];
    end
endmodule



module alu(
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire [1:0]  SEL,
    output reg  [31:0] Y
);

    always @(*) begin
        case (SEL)
            2'b00: Y = A + B;
            2'b01: Y = A - B;
            2'b10: Y = A << B[4:0];
            2'b11: Y = A >> B[4:0];
            default: Y = 32'd0;
        endcase
    end

endmodule