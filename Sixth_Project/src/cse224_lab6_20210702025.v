`timescale 1ns/1ps


`define ADD    3'b000
`define SUB    3'b001
`define SHIFTL 3'b010
`define SHIFTR 3'b011
`define ADDI   3'b100
`define SUBI   3'b101
`define BEQ    3'b110
`define JUMP   3'b111


module pc(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        next,    // control button
    input  wire        load,    // branch/jump taken
    input  wire [4:0]  din,     // new PC on branch/jump
    output reg  [4:0]  addr     // current PC
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)          addr <= 5'd0;
        else if (load)       addr <= din;
        else if (next)       addr <= addr + 5'd1;
    end
endmodule



module instr_mem(
    input  wire [4:0]  addr,
    output reg  [31:0] instr
);
    function [31:0] encR(input [2:0] op, input [4:0] rd,
                          input [4:0] rs1, input [4:0] rs2);
        encR = {op, rd, rs1, rs2, 14'd0};
    endfunction
    function [31:0] encI(input [2:0] op, input [4:0] rd,
                          input [4:0] rs1, input [4:0] imm5);
        encI = {op, rd, rs1, imm5, 14'd0};
    endfunction
    function [31:0] encB(input [2:0] op, input [4:0] src1,
                          input [4:0] src2, input [4:0] lbl5);
        encB = {op, src2, src1, lbl5, 14'd0};
    endfunction
    function [31:0] encJ(input [2:0] op, input [4:0] lbl5);
        encJ = {op, 5'd0, 5'd0, lbl5, 14'd0};
    endfunction

    always @(*) begin
        case (addr)
            5'd0:  instr = encI(`ADDI , 5'd10, 5'd0,  5'd10); // reg10 = 10
            5'd1:  instr = encI(`ADDI , 5'd15, 5'd0,  5'd15); // reg15 = 15
            5'd2:  instr = encR(`ADD  , 5'd25, 5'd10, 5'd15);// reg25=reg10+reg15
            5'd3:  instr = encI(`SUBI , 5'd20, 5'd25, 5'd5 );// reg20=reg25−5
            5'd4:  instr = encI(`ADDI , 5'd21, 5'd0,  5'd2 );// reg21=2
            5'd5:  instr = encJ(`JUMP,                       // Jump to PC=10
                                 5'd10);
            // 6–9: NOP (instr=0 ⇒ op=000=ADD, but A1=A2=0 so reg0←0 ⇒ harmless)
            5'd6, 5'd7, 5'd8, 5'd9: instr = 32'd0;
            5'd10: instr = encI(`ADDI , 5'd4,  5'd0,  5'd4 );// reg4 = 4
            5'd11: instr = encR(`ADD  , 5'd5,  5'd0,  5'd0 );// reg5 = 0
            5'd12: instr = encB(`BEQ  , 5'd4,  5'd5,  5'd7 );// if(reg4==reg5) PC=7
            5'd13: instr = encI(`ADDI , 5'd6,  5'd0,  5'd1 );// reg6 = 1
            5'd14: instr = encI(`ADDI , 5'd7,  5'd0,  5'd1 );// reg7 = 1
            5'd15: instr = encR(`ADD  , 5'd8,  5'd6,  5'd7 );// reg8 = reg6+reg7
            5'd16: instr = encR(`ADD  , 5'd6,  5'd7,  5'd0 );// reg6 = reg7+0
            5'd17: instr = encR(`ADD  , 5'd7,  5'd8,  5'd0 );// reg7 = reg8+0
            5'd18: instr = encI(`ADDI , 5'd5,  5'd5,  5'd1 );// reg5 = reg5+1
            5'd19: instr = encJ(`JUMP,                       // Jump back to PC=14
                                 5'd14);
            default: instr = 32'd0;
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
    initial for (i = 0; i < 32; i = i + 1)
        registers[i] = 32'd0;

    always @(posedge CLK) begin
        if (WE3)
            registers[A3] <= WD3;
    end

    always @(*) begin
        RD1 = registers[A1];
        RD2 = registers[A2];
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
            `ADD:    Y = A + B;
            `SUB:    Y = A - B;
            `SHIFTL: Y = A << B[4:0];
            `SHIFTR: Y = A >> B[4:0];
            `ADDI:   Y = A + B;
            `SUBI:   Y = A - B;
            default: Y = 32'd0;
        endcase
    end
endmodule

module hex7seg(
    input  wire [3:0] hex,
    output reg  [6:0] seg
);
    always @(*) begin
        case (hex)
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
    input  wire       clk,
    input  wire       btn_next,
    input  wire       btn_rst,
    output wire [6:0] seg_low,
    output wire [6:0] seg_high
);
    wire [4:0] pc_addr;
    wire       branch, load;
    wire [4:0] new_pc;
    pc u_pc (
        .clk  (clk),
        .rst_n(btn_rst),
        .next (btn_next),
        .load (load),
        .din  (new_pc),
        .addr (pc_addr)
    );

    wire [31:0] instr;
    instr_mem u_imem (
        .addr  (pc_addr),
        .instr (instr)
    );

    wire [2:0] opcode   = instr[31:29];
    wire [4:0] rd_field = instr[28:24];
    wire [4:0] rs1      = instr[23:19];
    wire [4:0] rs2imm   = instr[18:14];

    wire [31:0] imm32 = {{27{instr[18]}}, instr[18:14]};

    wire [31:0] rd1, rd2;
    wire we = btn_next && (opcode==`ADD   ||
                           opcode==`SUB   ||
                           opcode==`SHIFTL||
                           opcode==`SHIFTR||
                           opcode==`ADDI  ||
                           opcode==`SUBI );
    regfile u_rf (
        .CLK  (clk),
        .WE3  (we),
        .A1   (rs1),
        .A2   (opcode==`BEQ ? rd_field : rs2imm),
        .A3   (rd_field),
        .WD3  (Result),
        .RD1  (rd1),
        .RD2  (rd2)
    );

    wire [31:0] alu_b = (opcode==`ADDI || opcode==`SUBI) ? imm32 : rd2;
    wire [31:0] Result;
    alu_ext u_alu (
        .A   (rd1),
        .B   (alu_b),
        .SEL (opcode),
        .Y   (Result)
    );

    assign branch = (opcode==`BEQ && rd1==rd2);
    assign load   = btn_next && (branch || opcode==`JUMP);
    assign new_pc = rs2imm;  // label is in bits [18:14]

    wire [3:0] low_nib  = Result[3:0];
    wire [3:0] high_nib = Result[7:4];
    hex7seg u_hex_low  (.hex(low_nib),  .seg(seg_low));
    hex7seg u_hex_high (.hex(high_nib), .seg(seg_high));

endmodule