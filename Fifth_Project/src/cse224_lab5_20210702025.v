//Bugra Kurgan 20210702025 LAB5

`timescale 1ns/1ps

`define NOOP1   3'b000
`define NOOP2   3'b001
`define ADD     3'b010
`define SUB     3'b011
`define SHIFTL  3'b100
`define SHIFTR  3'b101
`define ADDI    3'b110
`define SUBI    3'b111

module pc(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        next,
    output reg  [2:0]  addr
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)      addr <= 3'd0;
        else if (next)   addr <= addr + 3'd1;
    end
endmodule

module instr_mem(
    input  wire [2:0]  addr,
    output reg  [31:0] instr
);
    function [31:0] enc;
        input [2:0] op; 
        input [4:0] rd, rs1, rs2i;
        begin
            enc = {op, rd, rs1, rs2i, 14'd0};
        end
    endfunction

    always @(*) begin
        case (addr)
            3'd0: instr = enc(`ADDI , 5'd10, 5'd0 , 5'd10);
            3'd1: instr = enc(`ADDI , 5'd15, 5'd0 , 5'd15);
            3'd2: instr = enc(`ADD  , 5'd25, 5'd10, 5'd15);
            3'd3: instr = enc(`SUBI , 5'd20, 5'd25, 5'd5 );
            3'd4: instr = enc(`ADDI , 5'd5 , 5'd0 , 5'd2 );
            3'd5: instr = enc(`SHIFTL, 5'd30, 5'd25, 5'd5 );
            default: instr = 32'd0;
        endcase
    end
endmodule

module alu_ext(
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire [2:0]  SEL,
    output reg  [31:0] Y
);
    always @(*) begin
        case (SEL)
            `NOOP1, `NOOP2:   Y = 32'd0;
            `ADD:             Y = A + B;
            `SUB:             Y = A - B;
            `SHIFTL:          Y = A << B[4:0];
            `SHIFTR:          Y = A >> B[4:0];
            `ADDI:            Y = A + B;
            `SUBI:            Y = A - B;
            default:          Y = 32'd0;
        endcase
    end
endmodule

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
    initial for (i = 0; i < 32; i = i + 1) registers[i] = 32'd0;

    always @(posedge CLK) if (WE3) registers[A3] <= WD3;
    always @(*) begin
        RD1 = registers[A1];
        RD2 = registers[A2];
    end
endmodule

module hex7seg(
    input  wire [3:0] hex,
    output reg  [6:0] seg
);
    always @(*) begin
        case(hex)
            4'h0: seg = 7'b1000000;
            4'h1: seg = 7'b1111001;
            4'h2: seg = 7'b0100100;
            4'h3: seg = 7'b0110000;
            4'h4: seg = 7'b0011001;
            4'h5: seg = 7'b0010010;
            4'h6: seg = 7'b0000010;
            4'h7: seg = 7'b1111000;
            4'h8: seg = 7'b0000000;
            4'h9: seg = 7'b0010000;
            4'hA: seg = 7'b0001000;
            4'hB: seg = 7'b0000011;
            4'hC: seg = 7'b1000110;
            4'hD: seg = 7'b0100001;
            4'hE: seg = 7'b0000110;
            4'hF: seg = 7'b0001110;
            default: seg = 7'b1111111;
        endcase
    end
endmodule

module semi_cpu_top(
    input  wire        clk,
    input  wire        btn_next,
    input  wire        btn_rst,
    output wire [31:0] Result,
    output wire [6:0]  seg
);
    wire [2:0] pc_addr;
    pc u_pc (
        .clk    (clk),
        .rst_n  (btn_rst),
        .next   (btn_next),
        .addr   (pc_addr)
    );

    wire [31:0] instr;
    instr_mem u_imem (
        .addr   (pc_addr),
        .instr  (instr)
    );

    wire [2:0] opcode = instr[31:29];
    wire [4:0] rd     = instr[28:24];
    wire [4:0] rs1    = instr[23:19];
    wire [4:0] rs2oi  = instr[18:14];

    wire [31:0] imm32 = {{27{rs2oi[4]}}, rs2oi};

    wire [31:0] rd1, rd2;
    regfile u_rf (
        .CLK    (clk),
        .WE3    ( (opcode!=`NOOP1 && opcode!=`NOOP2) ),
        .A1     (rs1),
        .A2     (rs2oi),
        .A3     (rd),
        .WD3    (Result),
        .RD1    (rd1),
        .RD2    (rd2)
    );

    wire [31:0] alu_b = (opcode==`ADDI || opcode==`SUBI) ? imm32 : rd2;

    alu_ext u_alu (
        .A   (rd1),
        .B   (alu_b),
        .SEL (opcode),
        .Y   (Result)
    );

    hex7seg u_hex7 (
        .hex (Result[3:0]),
        .seg (seg)
    );
endmodule