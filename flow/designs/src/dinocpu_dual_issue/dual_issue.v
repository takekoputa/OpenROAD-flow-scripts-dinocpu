module IssueUnit(
  input         clock,
  input         reset,
  input  [63:0] io_pc,
  input  [63:0] io_inst,
  output [63:0] io_nextpc,
  output [31:0] io_pipeA_inst,
  output [31:0] io_pipeB_inst,
  output        io_pipeB_valid
);
  wire [31:0] inst1 = io_inst[31:0]; // @[issue.scala 34:22]
  wire [31:0] inst2 = io_inst[63:32]; // @[issue.scala 35:22]
  wire [6:0] inst1_opcode = inst1[6:0]; // @[issue.scala 36:27]
  wire [6:0] inst2_opcode = inst2[6:0]; // @[issue.scala 37:27]
  wire [63:0] _GEN_3 = io_pc % 64'h8; // @[issue.scala 38:22]
  wire [3:0] _T = _GEN_3[3:0]; // @[issue.scala 38:22]
  wire  oddPC = _T == 4'h4; // @[issue.scala 38:29]
  wire [4:0] inst1_rd = inst1[11:7]; // @[issue.scala 45:24]
  wire [4:0] inst2_rs1 = inst2[19:15]; // @[issue.scala 47:24]
  wire [4:0] inst2_rs2 = inst2[24:20]; // @[issue.scala 48:24]
  wire  _T_2 = 7'h33 == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_4 = 7'h13 == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_6 = 7'h3 == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_8 = 7'h23 == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_10 = 7'h63 == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_12 = 7'h37 == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_14 = 7'h17 == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_16 = 7'h6f == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_18 = 7'h67 == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_20 = 7'h1b == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_22 = 7'h3b == inst1_opcode; // @[Lookup.scala 31:38]
  wire  _T_24 = _T_20 | _T_22; // @[Lookup.scala 33:37]
  wire  _T_25 = _T_18 | _T_24; // @[Lookup.scala 33:37]
  wire  _T_46 = _T_16 | _T_25; // @[Lookup.scala 33:37]
  wire  _T_47 = _T_14 | _T_46; // @[Lookup.scala 33:37]
  wire  _T_48 = _T_12 | _T_47; // @[Lookup.scala 33:37]
  wire  _T_49 = _T_10 ? 1'h0 : _T_48; // @[Lookup.scala 33:37]
  wire  _T_50 = _T_8 ? 1'h0 : _T_49; // @[Lookup.scala 33:37]
  wire  _T_51 = _T_6 | _T_50; // @[Lookup.scala 33:37]
  wire  _T_52 = _T_4 | _T_51; // @[Lookup.scala 33:37]
  wire  inst1_has_rd = _T_2 | _T_52; // @[Lookup.scala 33:37]
  wire  _T_54 = 7'h33 == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_56 = 7'h13 == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_58 = 7'h3 == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_60 = 7'h23 == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_62 = 7'h63 == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_64 = 7'h37 == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_66 = 7'h17 == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_68 = 7'h6f == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_70 = 7'h67 == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_72 = 7'h1b == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_74 = 7'h3b == inst2_opcode; // @[Lookup.scala 31:38]
  wire  _T_76 = _T_72 | _T_74; // @[Lookup.scala 33:37]
  wire  _T_77 = _T_70 | _T_76; // @[Lookup.scala 33:37]
  wire  _T_78 = _T_68 ? 1'h0 : _T_77; // @[Lookup.scala 33:37]
  wire  _T_79 = _T_66 ? 1'h0 : _T_78; // @[Lookup.scala 33:37]
  wire  _T_80 = _T_64 ? 1'h0 : _T_79; // @[Lookup.scala 33:37]
  wire  _T_81 = _T_62 | _T_80; // @[Lookup.scala 33:37]
  wire  _T_82 = _T_60 | _T_81; // @[Lookup.scala 33:37]
  wire  _T_83 = _T_58 | _T_82; // @[Lookup.scala 33:37]
  wire  _T_84 = _T_56 | _T_83; // @[Lookup.scala 33:37]
  wire  inst2_has_rs1 = _T_54 | _T_84; // @[Lookup.scala 33:37]
  wire  _T_86 = _T_72 ? 1'h0 : _T_74; // @[Lookup.scala 33:37]
  wire  _T_87 = _T_70 ? 1'h0 : _T_86; // @[Lookup.scala 33:37]
  wire  _T_88 = _T_68 ? 1'h0 : _T_87; // @[Lookup.scala 33:37]
  wire  _T_89 = _T_66 ? 1'h0 : _T_88; // @[Lookup.scala 33:37]
  wire  _T_90 = _T_64 ? 1'h0 : _T_89; // @[Lookup.scala 33:37]
  wire  _T_91 = _T_62 | _T_90; // @[Lookup.scala 33:37]
  wire  _T_92 = _T_60 | _T_91; // @[Lookup.scala 33:37]
  wire  _T_93 = _T_58 ? 1'h0 : _T_92; // @[Lookup.scala 33:37]
  wire  _T_94 = _T_56 ? 1'h0 : _T_93; // @[Lookup.scala 33:37]
  wire  inst2_has_rs2 = _T_54 | _T_94; // @[Lookup.scala 33:37]
  wire  will_issue_inst1 = ~oddPC; // @[issue.scala 84:23]
  wire  _T_106 = inst1_opcode == 7'h3; // @[issue.scala 89:33]
  wire  _T_107 = inst1_opcode == 7'h23; // @[issue.scala 90:33]
  wire  _T_108 = _T_106 | _T_107; // @[issue.scala 90:16]
  wire  _T_109 = inst1_opcode == 7'h63; // @[issue.scala 91:33]
  wire  _T_110 = _T_108 | _T_109; // @[issue.scala 91:16]
  wire  _T_111 = inst1_opcode == 7'h6f; // @[issue.scala 92:33]
  wire  _T_112 = _T_110 | _T_111; // @[issue.scala 92:16]
  wire  _T_113 = inst1_opcode == 7'h67; // @[issue.scala 93:33]
  wire  _T_114 = _T_112 | _T_113; // @[issue.scala 93:16]
  wire  _T_117 = inst1_rd != 5'h0; // @[issue.scala 95:73]
  wire  _T_118 = inst1_has_rd & _T_117; // @[issue.scala 95:61]
  wire  _T_119 = inst1_rd == inst2_rs1; // @[issue.scala 96:39]
  wire  _T_120 = inst2_has_rs1 & _T_119; // @[issue.scala 96:26]
  wire  _T_121 = inst1_rd == inst2_rs2; // @[issue.scala 96:86]
  wire  _T_122 = inst2_has_rs2 & _T_121; // @[issue.scala 96:73]
  wire  _T_123 = _T_120 | _T_122; // @[issue.scala 96:55]
  wire  _GEN_0 = _T_123 ? 1'h0 : 1'h1; // @[issue.scala 96:103]
  wire  _GEN_1 = _T_118 ? _GEN_0 : 1'h1; // @[issue.scala 95:82]
  wire  _GEN_2 = _T_114 ? 1'h0 : _GEN_1; // @[issue.scala 93:52]
  wire  will_issue_inst2 = oddPC | _GEN_2; // @[issue.scala 87:16]
  wire  _T_124 = will_issue_inst1 | will_issue_inst2; // @[issue.scala 106:27]
  wire  _T_126 = _T_124 | reset; // @[issue.scala 106:9]
  wire  _T_127 = ~_T_126; // @[issue.scala 106:9]
  wire  _T_128 = ~will_issue_inst1; // @[issue.scala 107:9]
  wire [63:0] _T_130 = io_pc + 64'h4; // @[issue.scala 108:29]
  wire  _T_131 = ~will_issue_inst2; // @[issue.scala 113:16]
  wire [63:0] _T_135 = io_pc + 64'h8; // @[issue.scala 120:29]
  wire [63:0] _GEN_4 = _T_131 ? _T_130 : _T_135; // @[issue.scala 113:35]
  wire [31:0] _GEN_7 = _T_131 ? 32'h13 : inst2; // @[issue.scala 113:35]
  wire  _GEN_8 = _T_131 ? 1'h0 : 1'h1; // @[issue.scala 113:35]
  assign io_nextpc = _T_128 ? _T_130 : _GEN_4; // @[issue.scala 108:20 issue.scala 114:20 issue.scala 120:20]
  assign io_pipeA_inst = _T_128 ? inst2 : inst1; // @[issue.scala 109:20 issue.scala 115:20 issue.scala 121:20]
  assign io_pipeB_inst = _T_128 ? 32'h13 : _GEN_7; // @[issue.scala 111:20 issue.scala 117:20 issue.scala 123:20]
  assign io_pipeB_valid = _T_128 ? 1'h0 : _GEN_8; // @[issue.scala 112:20 issue.scala 118:20 issue.scala 124:20]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_127) begin
          $fwrite(32'h80000002,"Assertion failed\n    at issue.scala:106 assert(will_issue_inst1 || will_issue_inst2)\n"); // @[issue.scala 106:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_127) begin
          $fatal; // @[issue.scala 106:9]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module DualIssueRegisterFile(
  input         clock,
  input  [4:0]  io_pipeA_readreg1,
  input  [4:0]  io_pipeA_readreg2,
  input  [4:0]  io_pipeA_writereg,
  input  [63:0] io_pipeA_writedata,
  input         io_pipeA_wen,
  input  [4:0]  io_pipeB_readreg1,
  input  [4:0]  io_pipeB_readreg2,
  input  [4:0]  io_pipeB_writereg,
  input  [63:0] io_pipeB_writedata,
  input         io_pipeB_wen,
  output [63:0] io_pipeA_readdata1,
  output [63:0] io_pipeA_readdata2,
  output [63:0] io_pipeB_readdata1,
  output [63:0] io_pipeB_readdata2
);
  reg [63:0] regs_0; // @[register-file.scala 68:17]
  reg [63:0] _RAND_0;
  reg [63:0] regs_1; // @[register-file.scala 68:17]
  reg [63:0] _RAND_1;
  reg [63:0] regs_2; // @[register-file.scala 68:17]
  reg [63:0] _RAND_2;
  reg [63:0] regs_3; // @[register-file.scala 68:17]
  reg [63:0] _RAND_3;
  reg [63:0] regs_4; // @[register-file.scala 68:17]
  reg [63:0] _RAND_4;
  reg [63:0] regs_5; // @[register-file.scala 68:17]
  reg [63:0] _RAND_5;
  reg [63:0] regs_6; // @[register-file.scala 68:17]
  reg [63:0] _RAND_6;
  reg [63:0] regs_7; // @[register-file.scala 68:17]
  reg [63:0] _RAND_7;
  reg [63:0] regs_8; // @[register-file.scala 68:17]
  reg [63:0] _RAND_8;
  reg [63:0] regs_9; // @[register-file.scala 68:17]
  reg [63:0] _RAND_9;
  reg [63:0] regs_10; // @[register-file.scala 68:17]
  reg [63:0] _RAND_10;
  reg [63:0] regs_11; // @[register-file.scala 68:17]
  reg [63:0] _RAND_11;
  reg [63:0] regs_12; // @[register-file.scala 68:17]
  reg [63:0] _RAND_12;
  reg [63:0] regs_13; // @[register-file.scala 68:17]
  reg [63:0] _RAND_13;
  reg [63:0] regs_14; // @[register-file.scala 68:17]
  reg [63:0] _RAND_14;
  reg [63:0] regs_15; // @[register-file.scala 68:17]
  reg [63:0] _RAND_15;
  reg [63:0] regs_16; // @[register-file.scala 68:17]
  reg [63:0] _RAND_16;
  reg [63:0] regs_17; // @[register-file.scala 68:17]
  reg [63:0] _RAND_17;
  reg [63:0] regs_18; // @[register-file.scala 68:17]
  reg [63:0] _RAND_18;
  reg [63:0] regs_19; // @[register-file.scala 68:17]
  reg [63:0] _RAND_19;
  reg [63:0] regs_20; // @[register-file.scala 68:17]
  reg [63:0] _RAND_20;
  reg [63:0] regs_21; // @[register-file.scala 68:17]
  reg [63:0] _RAND_21;
  reg [63:0] regs_22; // @[register-file.scala 68:17]
  reg [63:0] _RAND_22;
  reg [63:0] regs_23; // @[register-file.scala 68:17]
  reg [63:0] _RAND_23;
  reg [63:0] regs_24; // @[register-file.scala 68:17]
  reg [63:0] _RAND_24;
  reg [63:0] regs_25; // @[register-file.scala 68:17]
  reg [63:0] _RAND_25;
  reg [63:0] regs_26; // @[register-file.scala 68:17]
  reg [63:0] _RAND_26;
  reg [63:0] regs_27; // @[register-file.scala 68:17]
  reg [63:0] _RAND_27;
  reg [63:0] regs_28; // @[register-file.scala 68:17]
  reg [63:0] _RAND_28;
  reg [63:0] regs_29; // @[register-file.scala 68:17]
  reg [63:0] _RAND_29;
  reg [63:0] regs_30; // @[register-file.scala 68:17]
  reg [63:0] _RAND_30;
  reg [63:0] regs_31; // @[register-file.scala 68:17]
  reg [63:0] _RAND_31;
  wire  _T = io_pipeA_wen & io_pipeB_wen; // @[register-file.scala 72:22]
  wire  _T_1 = io_pipeA_writereg == io_pipeB_writereg; // @[register-file.scala 72:59]
  wire  _T_2 = _T & _T_1; // @[register-file.scala 72:38]
  wire [63:0] _GEN_193 = 5'h1 == io_pipeA_readreg1 ? regs_1 : regs_0; // @[register-file.scala 85:22]
  wire [63:0] _GEN_194 = 5'h2 == io_pipeA_readreg1 ? regs_2 : _GEN_193; // @[register-file.scala 85:22]
  wire [63:0] _GEN_195 = 5'h3 == io_pipeA_readreg1 ? regs_3 : _GEN_194; // @[register-file.scala 85:22]
  wire [63:0] _GEN_196 = 5'h4 == io_pipeA_readreg1 ? regs_4 : _GEN_195; // @[register-file.scala 85:22]
  wire [63:0] _GEN_197 = 5'h5 == io_pipeA_readreg1 ? regs_5 : _GEN_196; // @[register-file.scala 85:22]
  wire [63:0] _GEN_198 = 5'h6 == io_pipeA_readreg1 ? regs_6 : _GEN_197; // @[register-file.scala 85:22]
  wire [63:0] _GEN_199 = 5'h7 == io_pipeA_readreg1 ? regs_7 : _GEN_198; // @[register-file.scala 85:22]
  wire [63:0] _GEN_200 = 5'h8 == io_pipeA_readreg1 ? regs_8 : _GEN_199; // @[register-file.scala 85:22]
  wire [63:0] _GEN_201 = 5'h9 == io_pipeA_readreg1 ? regs_9 : _GEN_200; // @[register-file.scala 85:22]
  wire [63:0] _GEN_202 = 5'ha == io_pipeA_readreg1 ? regs_10 : _GEN_201; // @[register-file.scala 85:22]
  wire [63:0] _GEN_203 = 5'hb == io_pipeA_readreg1 ? regs_11 : _GEN_202; // @[register-file.scala 85:22]
  wire [63:0] _GEN_204 = 5'hc == io_pipeA_readreg1 ? regs_12 : _GEN_203; // @[register-file.scala 85:22]
  wire [63:0] _GEN_205 = 5'hd == io_pipeA_readreg1 ? regs_13 : _GEN_204; // @[register-file.scala 85:22]
  wire [63:0] _GEN_206 = 5'he == io_pipeA_readreg1 ? regs_14 : _GEN_205; // @[register-file.scala 85:22]
  wire [63:0] _GEN_207 = 5'hf == io_pipeA_readreg1 ? regs_15 : _GEN_206; // @[register-file.scala 85:22]
  wire [63:0] _GEN_208 = 5'h10 == io_pipeA_readreg1 ? regs_16 : _GEN_207; // @[register-file.scala 85:22]
  wire [63:0] _GEN_209 = 5'h11 == io_pipeA_readreg1 ? regs_17 : _GEN_208; // @[register-file.scala 85:22]
  wire [63:0] _GEN_210 = 5'h12 == io_pipeA_readreg1 ? regs_18 : _GEN_209; // @[register-file.scala 85:22]
  wire [63:0] _GEN_211 = 5'h13 == io_pipeA_readreg1 ? regs_19 : _GEN_210; // @[register-file.scala 85:22]
  wire [63:0] _GEN_212 = 5'h14 == io_pipeA_readreg1 ? regs_20 : _GEN_211; // @[register-file.scala 85:22]
  wire [63:0] _GEN_213 = 5'h15 == io_pipeA_readreg1 ? regs_21 : _GEN_212; // @[register-file.scala 85:22]
  wire [63:0] _GEN_214 = 5'h16 == io_pipeA_readreg1 ? regs_22 : _GEN_213; // @[register-file.scala 85:22]
  wire [63:0] _GEN_215 = 5'h17 == io_pipeA_readreg1 ? regs_23 : _GEN_214; // @[register-file.scala 85:22]
  wire [63:0] _GEN_216 = 5'h18 == io_pipeA_readreg1 ? regs_24 : _GEN_215; // @[register-file.scala 85:22]
  wire [63:0] _GEN_217 = 5'h19 == io_pipeA_readreg1 ? regs_25 : _GEN_216; // @[register-file.scala 85:22]
  wire [63:0] _GEN_218 = 5'h1a == io_pipeA_readreg1 ? regs_26 : _GEN_217; // @[register-file.scala 85:22]
  wire [63:0] _GEN_219 = 5'h1b == io_pipeA_readreg1 ? regs_27 : _GEN_218; // @[register-file.scala 85:22]
  wire [63:0] _GEN_220 = 5'h1c == io_pipeA_readreg1 ? regs_28 : _GEN_219; // @[register-file.scala 85:22]
  wire [63:0] _GEN_221 = 5'h1d == io_pipeA_readreg1 ? regs_29 : _GEN_220; // @[register-file.scala 85:22]
  wire [63:0] _GEN_222 = 5'h1e == io_pipeA_readreg1 ? regs_30 : _GEN_221; // @[register-file.scala 85:22]
  wire [63:0] _GEN_223 = 5'h1f == io_pipeA_readreg1 ? regs_31 : _GEN_222; // @[register-file.scala 85:22]
  wire [63:0] _GEN_225 = 5'h1 == io_pipeA_readreg2 ? regs_1 : regs_0; // @[register-file.scala 86:22]
  wire [63:0] _GEN_226 = 5'h2 == io_pipeA_readreg2 ? regs_2 : _GEN_225; // @[register-file.scala 86:22]
  wire [63:0] _GEN_227 = 5'h3 == io_pipeA_readreg2 ? regs_3 : _GEN_226; // @[register-file.scala 86:22]
  wire [63:0] _GEN_228 = 5'h4 == io_pipeA_readreg2 ? regs_4 : _GEN_227; // @[register-file.scala 86:22]
  wire [63:0] _GEN_229 = 5'h5 == io_pipeA_readreg2 ? regs_5 : _GEN_228; // @[register-file.scala 86:22]
  wire [63:0] _GEN_230 = 5'h6 == io_pipeA_readreg2 ? regs_6 : _GEN_229; // @[register-file.scala 86:22]
  wire [63:0] _GEN_231 = 5'h7 == io_pipeA_readreg2 ? regs_7 : _GEN_230; // @[register-file.scala 86:22]
  wire [63:0] _GEN_232 = 5'h8 == io_pipeA_readreg2 ? regs_8 : _GEN_231; // @[register-file.scala 86:22]
  wire [63:0] _GEN_233 = 5'h9 == io_pipeA_readreg2 ? regs_9 : _GEN_232; // @[register-file.scala 86:22]
  wire [63:0] _GEN_234 = 5'ha == io_pipeA_readreg2 ? regs_10 : _GEN_233; // @[register-file.scala 86:22]
  wire [63:0] _GEN_235 = 5'hb == io_pipeA_readreg2 ? regs_11 : _GEN_234; // @[register-file.scala 86:22]
  wire [63:0] _GEN_236 = 5'hc == io_pipeA_readreg2 ? regs_12 : _GEN_235; // @[register-file.scala 86:22]
  wire [63:0] _GEN_237 = 5'hd == io_pipeA_readreg2 ? regs_13 : _GEN_236; // @[register-file.scala 86:22]
  wire [63:0] _GEN_238 = 5'he == io_pipeA_readreg2 ? regs_14 : _GEN_237; // @[register-file.scala 86:22]
  wire [63:0] _GEN_239 = 5'hf == io_pipeA_readreg2 ? regs_15 : _GEN_238; // @[register-file.scala 86:22]
  wire [63:0] _GEN_240 = 5'h10 == io_pipeA_readreg2 ? regs_16 : _GEN_239; // @[register-file.scala 86:22]
  wire [63:0] _GEN_241 = 5'h11 == io_pipeA_readreg2 ? regs_17 : _GEN_240; // @[register-file.scala 86:22]
  wire [63:0] _GEN_242 = 5'h12 == io_pipeA_readreg2 ? regs_18 : _GEN_241; // @[register-file.scala 86:22]
  wire [63:0] _GEN_243 = 5'h13 == io_pipeA_readreg2 ? regs_19 : _GEN_242; // @[register-file.scala 86:22]
  wire [63:0] _GEN_244 = 5'h14 == io_pipeA_readreg2 ? regs_20 : _GEN_243; // @[register-file.scala 86:22]
  wire [63:0] _GEN_245 = 5'h15 == io_pipeA_readreg2 ? regs_21 : _GEN_244; // @[register-file.scala 86:22]
  wire [63:0] _GEN_246 = 5'h16 == io_pipeA_readreg2 ? regs_22 : _GEN_245; // @[register-file.scala 86:22]
  wire [63:0] _GEN_247 = 5'h17 == io_pipeA_readreg2 ? regs_23 : _GEN_246; // @[register-file.scala 86:22]
  wire [63:0] _GEN_248 = 5'h18 == io_pipeA_readreg2 ? regs_24 : _GEN_247; // @[register-file.scala 86:22]
  wire [63:0] _GEN_249 = 5'h19 == io_pipeA_readreg2 ? regs_25 : _GEN_248; // @[register-file.scala 86:22]
  wire [63:0] _GEN_250 = 5'h1a == io_pipeA_readreg2 ? regs_26 : _GEN_249; // @[register-file.scala 86:22]
  wire [63:0] _GEN_251 = 5'h1b == io_pipeA_readreg2 ? regs_27 : _GEN_250; // @[register-file.scala 86:22]
  wire [63:0] _GEN_252 = 5'h1c == io_pipeA_readreg2 ? regs_28 : _GEN_251; // @[register-file.scala 86:22]
  wire [63:0] _GEN_253 = 5'h1d == io_pipeA_readreg2 ? regs_29 : _GEN_252; // @[register-file.scala 86:22]
  wire [63:0] _GEN_254 = 5'h1e == io_pipeA_readreg2 ? regs_30 : _GEN_253; // @[register-file.scala 86:22]
  wire [63:0] _GEN_255 = 5'h1f == io_pipeA_readreg2 ? regs_31 : _GEN_254; // @[register-file.scala 86:22]
  wire [63:0] _GEN_257 = 5'h1 == io_pipeB_readreg1 ? regs_1 : regs_0; // @[register-file.scala 87:22]
  wire [63:0] _GEN_258 = 5'h2 == io_pipeB_readreg1 ? regs_2 : _GEN_257; // @[register-file.scala 87:22]
  wire [63:0] _GEN_259 = 5'h3 == io_pipeB_readreg1 ? regs_3 : _GEN_258; // @[register-file.scala 87:22]
  wire [63:0] _GEN_260 = 5'h4 == io_pipeB_readreg1 ? regs_4 : _GEN_259; // @[register-file.scala 87:22]
  wire [63:0] _GEN_261 = 5'h5 == io_pipeB_readreg1 ? regs_5 : _GEN_260; // @[register-file.scala 87:22]
  wire [63:0] _GEN_262 = 5'h6 == io_pipeB_readreg1 ? regs_6 : _GEN_261; // @[register-file.scala 87:22]
  wire [63:0] _GEN_263 = 5'h7 == io_pipeB_readreg1 ? regs_7 : _GEN_262; // @[register-file.scala 87:22]
  wire [63:0] _GEN_264 = 5'h8 == io_pipeB_readreg1 ? regs_8 : _GEN_263; // @[register-file.scala 87:22]
  wire [63:0] _GEN_265 = 5'h9 == io_pipeB_readreg1 ? regs_9 : _GEN_264; // @[register-file.scala 87:22]
  wire [63:0] _GEN_266 = 5'ha == io_pipeB_readreg1 ? regs_10 : _GEN_265; // @[register-file.scala 87:22]
  wire [63:0] _GEN_267 = 5'hb == io_pipeB_readreg1 ? regs_11 : _GEN_266; // @[register-file.scala 87:22]
  wire [63:0] _GEN_268 = 5'hc == io_pipeB_readreg1 ? regs_12 : _GEN_267; // @[register-file.scala 87:22]
  wire [63:0] _GEN_269 = 5'hd == io_pipeB_readreg1 ? regs_13 : _GEN_268; // @[register-file.scala 87:22]
  wire [63:0] _GEN_270 = 5'he == io_pipeB_readreg1 ? regs_14 : _GEN_269; // @[register-file.scala 87:22]
  wire [63:0] _GEN_271 = 5'hf == io_pipeB_readreg1 ? regs_15 : _GEN_270; // @[register-file.scala 87:22]
  wire [63:0] _GEN_272 = 5'h10 == io_pipeB_readreg1 ? regs_16 : _GEN_271; // @[register-file.scala 87:22]
  wire [63:0] _GEN_273 = 5'h11 == io_pipeB_readreg1 ? regs_17 : _GEN_272; // @[register-file.scala 87:22]
  wire [63:0] _GEN_274 = 5'h12 == io_pipeB_readreg1 ? regs_18 : _GEN_273; // @[register-file.scala 87:22]
  wire [63:0] _GEN_275 = 5'h13 == io_pipeB_readreg1 ? regs_19 : _GEN_274; // @[register-file.scala 87:22]
  wire [63:0] _GEN_276 = 5'h14 == io_pipeB_readreg1 ? regs_20 : _GEN_275; // @[register-file.scala 87:22]
  wire [63:0] _GEN_277 = 5'h15 == io_pipeB_readreg1 ? regs_21 : _GEN_276; // @[register-file.scala 87:22]
  wire [63:0] _GEN_278 = 5'h16 == io_pipeB_readreg1 ? regs_22 : _GEN_277; // @[register-file.scala 87:22]
  wire [63:0] _GEN_279 = 5'h17 == io_pipeB_readreg1 ? regs_23 : _GEN_278; // @[register-file.scala 87:22]
  wire [63:0] _GEN_280 = 5'h18 == io_pipeB_readreg1 ? regs_24 : _GEN_279; // @[register-file.scala 87:22]
  wire [63:0] _GEN_281 = 5'h19 == io_pipeB_readreg1 ? regs_25 : _GEN_280; // @[register-file.scala 87:22]
  wire [63:0] _GEN_282 = 5'h1a == io_pipeB_readreg1 ? regs_26 : _GEN_281; // @[register-file.scala 87:22]
  wire [63:0] _GEN_283 = 5'h1b == io_pipeB_readreg1 ? regs_27 : _GEN_282; // @[register-file.scala 87:22]
  wire [63:0] _GEN_284 = 5'h1c == io_pipeB_readreg1 ? regs_28 : _GEN_283; // @[register-file.scala 87:22]
  wire [63:0] _GEN_285 = 5'h1d == io_pipeB_readreg1 ? regs_29 : _GEN_284; // @[register-file.scala 87:22]
  wire [63:0] _GEN_286 = 5'h1e == io_pipeB_readreg1 ? regs_30 : _GEN_285; // @[register-file.scala 87:22]
  wire [63:0] _GEN_287 = 5'h1f == io_pipeB_readreg1 ? regs_31 : _GEN_286; // @[register-file.scala 87:22]
  wire [63:0] _GEN_289 = 5'h1 == io_pipeB_readreg2 ? regs_1 : regs_0; // @[register-file.scala 88:22]
  wire [63:0] _GEN_290 = 5'h2 == io_pipeB_readreg2 ? regs_2 : _GEN_289; // @[register-file.scala 88:22]
  wire [63:0] _GEN_291 = 5'h3 == io_pipeB_readreg2 ? regs_3 : _GEN_290; // @[register-file.scala 88:22]
  wire [63:0] _GEN_292 = 5'h4 == io_pipeB_readreg2 ? regs_4 : _GEN_291; // @[register-file.scala 88:22]
  wire [63:0] _GEN_293 = 5'h5 == io_pipeB_readreg2 ? regs_5 : _GEN_292; // @[register-file.scala 88:22]
  wire [63:0] _GEN_294 = 5'h6 == io_pipeB_readreg2 ? regs_6 : _GEN_293; // @[register-file.scala 88:22]
  wire [63:0] _GEN_295 = 5'h7 == io_pipeB_readreg2 ? regs_7 : _GEN_294; // @[register-file.scala 88:22]
  wire [63:0] _GEN_296 = 5'h8 == io_pipeB_readreg2 ? regs_8 : _GEN_295; // @[register-file.scala 88:22]
  wire [63:0] _GEN_297 = 5'h9 == io_pipeB_readreg2 ? regs_9 : _GEN_296; // @[register-file.scala 88:22]
  wire [63:0] _GEN_298 = 5'ha == io_pipeB_readreg2 ? regs_10 : _GEN_297; // @[register-file.scala 88:22]
  wire [63:0] _GEN_299 = 5'hb == io_pipeB_readreg2 ? regs_11 : _GEN_298; // @[register-file.scala 88:22]
  wire [63:0] _GEN_300 = 5'hc == io_pipeB_readreg2 ? regs_12 : _GEN_299; // @[register-file.scala 88:22]
  wire [63:0] _GEN_301 = 5'hd == io_pipeB_readreg2 ? regs_13 : _GEN_300; // @[register-file.scala 88:22]
  wire [63:0] _GEN_302 = 5'he == io_pipeB_readreg2 ? regs_14 : _GEN_301; // @[register-file.scala 88:22]
  wire [63:0] _GEN_303 = 5'hf == io_pipeB_readreg2 ? regs_15 : _GEN_302; // @[register-file.scala 88:22]
  wire [63:0] _GEN_304 = 5'h10 == io_pipeB_readreg2 ? regs_16 : _GEN_303; // @[register-file.scala 88:22]
  wire [63:0] _GEN_305 = 5'h11 == io_pipeB_readreg2 ? regs_17 : _GEN_304; // @[register-file.scala 88:22]
  wire [63:0] _GEN_306 = 5'h12 == io_pipeB_readreg2 ? regs_18 : _GEN_305; // @[register-file.scala 88:22]
  wire [63:0] _GEN_307 = 5'h13 == io_pipeB_readreg2 ? regs_19 : _GEN_306; // @[register-file.scala 88:22]
  wire [63:0] _GEN_308 = 5'h14 == io_pipeB_readreg2 ? regs_20 : _GEN_307; // @[register-file.scala 88:22]
  wire [63:0] _GEN_309 = 5'h15 == io_pipeB_readreg2 ? regs_21 : _GEN_308; // @[register-file.scala 88:22]
  wire [63:0] _GEN_310 = 5'h16 == io_pipeB_readreg2 ? regs_22 : _GEN_309; // @[register-file.scala 88:22]
  wire [63:0] _GEN_311 = 5'h17 == io_pipeB_readreg2 ? regs_23 : _GEN_310; // @[register-file.scala 88:22]
  wire [63:0] _GEN_312 = 5'h18 == io_pipeB_readreg2 ? regs_24 : _GEN_311; // @[register-file.scala 88:22]
  wire [63:0] _GEN_313 = 5'h19 == io_pipeB_readreg2 ? regs_25 : _GEN_312; // @[register-file.scala 88:22]
  wire [63:0] _GEN_314 = 5'h1a == io_pipeB_readreg2 ? regs_26 : _GEN_313; // @[register-file.scala 88:22]
  wire [63:0] _GEN_315 = 5'h1b == io_pipeB_readreg2 ? regs_27 : _GEN_314; // @[register-file.scala 88:22]
  wire [63:0] _GEN_316 = 5'h1c == io_pipeB_readreg2 ? regs_28 : _GEN_315; // @[register-file.scala 88:22]
  wire [63:0] _GEN_317 = 5'h1d == io_pipeB_readreg2 ? regs_29 : _GEN_316; // @[register-file.scala 88:22]
  wire [63:0] _GEN_318 = 5'h1e == io_pipeB_readreg2 ? regs_30 : _GEN_317; // @[register-file.scala 88:22]
  wire [63:0] _GEN_319 = 5'h1f == io_pipeB_readreg2 ? regs_31 : _GEN_318; // @[register-file.scala 88:22]
  wire  _T_3 = io_pipeA_readreg1 == io_pipeB_writereg; // @[register-file.scala 92:29]
  wire  _T_4 = _T_3 & io_pipeB_wen; // @[register-file.scala 92:51]
  wire  _T_5 = io_pipeA_readreg1 == io_pipeA_writereg; // @[register-file.scala 94:36]
  wire  _T_6 = _T_5 & io_pipeA_wen; // @[register-file.scala 94:58]
  wire [63:0] _GEN_320 = _T_6 ? io_pipeA_writedata : _GEN_223; // @[register-file.scala 94:75]
  wire  _T_7 = io_pipeA_readreg2 == io_pipeB_writereg; // @[register-file.scala 98:29]
  wire  _T_8 = _T_7 & io_pipeB_wen; // @[register-file.scala 98:51]
  wire  _T_9 = io_pipeA_readreg2 == io_pipeA_writereg; // @[register-file.scala 100:36]
  wire  _T_10 = _T_9 & io_pipeA_wen; // @[register-file.scala 100:58]
  wire [63:0] _GEN_322 = _T_10 ? io_pipeA_writedata : _GEN_255; // @[register-file.scala 100:75]
  wire  _T_11 = io_pipeB_readreg1 == io_pipeB_writereg; // @[register-file.scala 104:29]
  wire  _T_12 = _T_11 & io_pipeB_wen; // @[register-file.scala 104:51]
  wire  _T_13 = io_pipeB_readreg1 == io_pipeA_writereg; // @[register-file.scala 106:36]
  wire  _T_14 = _T_13 & io_pipeA_wen; // @[register-file.scala 106:58]
  wire [63:0] _GEN_324 = _T_14 ? io_pipeA_writedata : _GEN_287; // @[register-file.scala 106:75]
  wire  _T_15 = io_pipeB_readreg2 == io_pipeB_writereg; // @[register-file.scala 110:29]
  wire  _T_16 = _T_15 & io_pipeB_wen; // @[register-file.scala 110:51]
  wire  _T_17 = io_pipeB_readreg2 == io_pipeA_writereg; // @[register-file.scala 112:36]
  wire  _T_18 = _T_17 & io_pipeA_wen; // @[register-file.scala 112:58]
  wire [63:0] _GEN_326 = _T_18 ? io_pipeA_writedata : _GEN_319; // @[register-file.scala 112:75]
  assign io_pipeA_readdata1 = _T_4 ? io_pipeB_writedata : _GEN_320; // @[register-file.scala 85:22 register-file.scala 93:26 register-file.scala 95:26]
  assign io_pipeA_readdata2 = _T_8 ? io_pipeB_writedata : _GEN_322; // @[register-file.scala 86:22 register-file.scala 99:26 register-file.scala 101:26]
  assign io_pipeB_readdata1 = _T_12 ? io_pipeB_writedata : _GEN_324; // @[register-file.scala 87:22 register-file.scala 105:26 register-file.scala 107:26]
  assign io_pipeB_readdata2 = _T_16 ? io_pipeB_writedata : _GEN_326; // @[register-file.scala 88:22 register-file.scala 111:26 register-file.scala 113:26]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  regs_0 = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  regs_1 = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  regs_2 = _RAND_2[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  regs_3 = _RAND_3[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  regs_4 = _RAND_4[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  regs_5 = _RAND_5[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  regs_6 = _RAND_6[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {2{`RANDOM}};
  regs_7 = _RAND_7[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  regs_8 = _RAND_8[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {2{`RANDOM}};
  regs_9 = _RAND_9[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {2{`RANDOM}};
  regs_10 = _RAND_10[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {2{`RANDOM}};
  regs_11 = _RAND_11[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{`RANDOM}};
  regs_12 = _RAND_12[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {2{`RANDOM}};
  regs_13 = _RAND_13[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {2{`RANDOM}};
  regs_14 = _RAND_14[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {2{`RANDOM}};
  regs_15 = _RAND_15[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{`RANDOM}};
  regs_16 = _RAND_16[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {2{`RANDOM}};
  regs_17 = _RAND_17[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{`RANDOM}};
  regs_18 = _RAND_18[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {2{`RANDOM}};
  regs_19 = _RAND_19[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {2{`RANDOM}};
  regs_20 = _RAND_20[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {2{`RANDOM}};
  regs_21 = _RAND_21[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {2{`RANDOM}};
  regs_22 = _RAND_22[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {2{`RANDOM}};
  regs_23 = _RAND_23[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {2{`RANDOM}};
  regs_24 = _RAND_24[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {2{`RANDOM}};
  regs_25 = _RAND_25[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {2{`RANDOM}};
  regs_26 = _RAND_26[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {2{`RANDOM}};
  regs_27 = _RAND_27[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {2{`RANDOM}};
  regs_28 = _RAND_28[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {2{`RANDOM}};
  regs_29 = _RAND_29[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {2{`RANDOM}};
  regs_30 = _RAND_30[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {2{`RANDOM}};
  regs_31 = _RAND_31[63:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_2) begin
      if (5'h0 == io_pipeB_writereg) begin
        regs_0 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h0 == io_pipeB_writereg) begin
        regs_0 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h0 == io_pipeA_writereg) begin
          regs_0 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h0 == io_pipeA_writereg) begin
        regs_0 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h1 == io_pipeB_writereg) begin
        regs_1 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h1 == io_pipeB_writereg) begin
        regs_1 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h1 == io_pipeA_writereg) begin
          regs_1 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h1 == io_pipeA_writereg) begin
        regs_1 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h2 == io_pipeB_writereg) begin
        regs_2 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h2 == io_pipeB_writereg) begin
        regs_2 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h2 == io_pipeA_writereg) begin
          regs_2 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h2 == io_pipeA_writereg) begin
        regs_2 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h3 == io_pipeB_writereg) begin
        regs_3 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h3 == io_pipeB_writereg) begin
        regs_3 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h3 == io_pipeA_writereg) begin
          regs_3 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h3 == io_pipeA_writereg) begin
        regs_3 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h4 == io_pipeB_writereg) begin
        regs_4 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h4 == io_pipeB_writereg) begin
        regs_4 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h4 == io_pipeA_writereg) begin
          regs_4 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h4 == io_pipeA_writereg) begin
        regs_4 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h5 == io_pipeB_writereg) begin
        regs_5 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h5 == io_pipeB_writereg) begin
        regs_5 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h5 == io_pipeA_writereg) begin
          regs_5 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h5 == io_pipeA_writereg) begin
        regs_5 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h6 == io_pipeB_writereg) begin
        regs_6 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h6 == io_pipeB_writereg) begin
        regs_6 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h6 == io_pipeA_writereg) begin
          regs_6 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h6 == io_pipeA_writereg) begin
        regs_6 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h7 == io_pipeB_writereg) begin
        regs_7 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h7 == io_pipeB_writereg) begin
        regs_7 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h7 == io_pipeA_writereg) begin
          regs_7 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h7 == io_pipeA_writereg) begin
        regs_7 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h8 == io_pipeB_writereg) begin
        regs_8 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h8 == io_pipeB_writereg) begin
        regs_8 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h8 == io_pipeA_writereg) begin
          regs_8 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h8 == io_pipeA_writereg) begin
        regs_8 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h9 == io_pipeB_writereg) begin
        regs_9 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h9 == io_pipeB_writereg) begin
        regs_9 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h9 == io_pipeA_writereg) begin
          regs_9 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h9 == io_pipeA_writereg) begin
        regs_9 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'ha == io_pipeB_writereg) begin
        regs_10 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'ha == io_pipeB_writereg) begin
        regs_10 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'ha == io_pipeA_writereg) begin
          regs_10 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'ha == io_pipeA_writereg) begin
        regs_10 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'hb == io_pipeB_writereg) begin
        regs_11 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'hb == io_pipeB_writereg) begin
        regs_11 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'hb == io_pipeA_writereg) begin
          regs_11 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'hb == io_pipeA_writereg) begin
        regs_11 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'hc == io_pipeB_writereg) begin
        regs_12 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'hc == io_pipeB_writereg) begin
        regs_12 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'hc == io_pipeA_writereg) begin
          regs_12 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'hc == io_pipeA_writereg) begin
        regs_12 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'hd == io_pipeB_writereg) begin
        regs_13 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'hd == io_pipeB_writereg) begin
        regs_13 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'hd == io_pipeA_writereg) begin
          regs_13 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'hd == io_pipeA_writereg) begin
        regs_13 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'he == io_pipeB_writereg) begin
        regs_14 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'he == io_pipeB_writereg) begin
        regs_14 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'he == io_pipeA_writereg) begin
          regs_14 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'he == io_pipeA_writereg) begin
        regs_14 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'hf == io_pipeB_writereg) begin
        regs_15 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'hf == io_pipeB_writereg) begin
        regs_15 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'hf == io_pipeA_writereg) begin
          regs_15 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'hf == io_pipeA_writereg) begin
        regs_15 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h10 == io_pipeB_writereg) begin
        regs_16 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h10 == io_pipeB_writereg) begin
        regs_16 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h10 == io_pipeA_writereg) begin
          regs_16 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h10 == io_pipeA_writereg) begin
        regs_16 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h11 == io_pipeB_writereg) begin
        regs_17 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h11 == io_pipeB_writereg) begin
        regs_17 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h11 == io_pipeA_writereg) begin
          regs_17 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h11 == io_pipeA_writereg) begin
        regs_17 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h12 == io_pipeB_writereg) begin
        regs_18 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h12 == io_pipeB_writereg) begin
        regs_18 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h12 == io_pipeA_writereg) begin
          regs_18 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h12 == io_pipeA_writereg) begin
        regs_18 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h13 == io_pipeB_writereg) begin
        regs_19 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h13 == io_pipeB_writereg) begin
        regs_19 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h13 == io_pipeA_writereg) begin
          regs_19 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h13 == io_pipeA_writereg) begin
        regs_19 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h14 == io_pipeB_writereg) begin
        regs_20 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h14 == io_pipeB_writereg) begin
        regs_20 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h14 == io_pipeA_writereg) begin
          regs_20 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h14 == io_pipeA_writereg) begin
        regs_20 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h15 == io_pipeB_writereg) begin
        regs_21 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h15 == io_pipeB_writereg) begin
        regs_21 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h15 == io_pipeA_writereg) begin
          regs_21 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h15 == io_pipeA_writereg) begin
        regs_21 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h16 == io_pipeB_writereg) begin
        regs_22 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h16 == io_pipeB_writereg) begin
        regs_22 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h16 == io_pipeA_writereg) begin
          regs_22 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h16 == io_pipeA_writereg) begin
        regs_22 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h17 == io_pipeB_writereg) begin
        regs_23 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h17 == io_pipeB_writereg) begin
        regs_23 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h17 == io_pipeA_writereg) begin
          regs_23 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h17 == io_pipeA_writereg) begin
        regs_23 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h18 == io_pipeB_writereg) begin
        regs_24 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h18 == io_pipeB_writereg) begin
        regs_24 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h18 == io_pipeA_writereg) begin
          regs_24 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h18 == io_pipeA_writereg) begin
        regs_24 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h19 == io_pipeB_writereg) begin
        regs_25 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h19 == io_pipeB_writereg) begin
        regs_25 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h19 == io_pipeA_writereg) begin
          regs_25 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h19 == io_pipeA_writereg) begin
        regs_25 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h1a == io_pipeB_writereg) begin
        regs_26 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h1a == io_pipeB_writereg) begin
        regs_26 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h1a == io_pipeA_writereg) begin
          regs_26 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h1a == io_pipeA_writereg) begin
        regs_26 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h1b == io_pipeB_writereg) begin
        regs_27 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h1b == io_pipeB_writereg) begin
        regs_27 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h1b == io_pipeA_writereg) begin
          regs_27 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h1b == io_pipeA_writereg) begin
        regs_27 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h1c == io_pipeB_writereg) begin
        regs_28 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h1c == io_pipeB_writereg) begin
        regs_28 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h1c == io_pipeA_writereg) begin
          regs_28 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h1c == io_pipeA_writereg) begin
        regs_28 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h1d == io_pipeB_writereg) begin
        regs_29 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h1d == io_pipeB_writereg) begin
        regs_29 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h1d == io_pipeA_writereg) begin
          regs_29 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h1d == io_pipeA_writereg) begin
        regs_29 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h1e == io_pipeB_writereg) begin
        regs_30 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h1e == io_pipeB_writereg) begin
        regs_30 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h1e == io_pipeA_writereg) begin
          regs_30 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h1e == io_pipeA_writereg) begin
        regs_30 <= io_pipeA_writedata;
      end
    end
    if (_T_2) begin
      if (5'h1f == io_pipeB_writereg) begin
        regs_31 <= io_pipeB_writedata;
      end
    end else if (io_pipeB_wen) begin
      if (5'h1f == io_pipeB_writereg) begin
        regs_31 <= io_pipeB_writedata;
      end else if (io_pipeA_wen) begin
        if (5'h1f == io_pipeA_writereg) begin
          regs_31 <= io_pipeA_writedata;
        end
      end
    end else if (io_pipeA_wen) begin
      if (5'h1f == io_pipeA_writereg) begin
        regs_31 <= io_pipeA_writedata;
      end
    end
  end
endmodule
module Control(
  input  [6:0] io_opcode,
  output       io_itype,
  output       io_aluop,
  output       io_src1,
  output [1:0] io_src2,
  output       io_branch,
  output [1:0] io_jumptype,
  output       io_resultselect,
  output [1:0] io_memop,
  output       io_toreg,
  output       io_regwrite,
  output       io_wordinst
);
  wire  _T_1 = 7'h33 == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_3 = 7'h13 == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_5 = 7'h3 == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_7 = 7'h23 == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_9 = 7'h63 == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_11 = 7'h37 == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_13 = 7'h17 == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_15 = 7'h6f == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_17 = 7'h67 == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_19 = 7'h1b == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_21 = 7'h3b == io_opcode; // @[Lookup.scala 31:38]
  wire  _T_24 = _T_17 ? 1'h0 : _T_19; // @[Lookup.scala 33:37]
  wire  _T_25 = _T_15 ? 1'h0 : _T_24; // @[Lookup.scala 33:37]
  wire  _T_26 = _T_13 ? 1'h0 : _T_25; // @[Lookup.scala 33:37]
  wire  _T_27 = _T_11 ? 1'h0 : _T_26; // @[Lookup.scala 33:37]
  wire  _T_28 = _T_9 ? 1'h0 : _T_27; // @[Lookup.scala 33:37]
  wire  _T_29 = _T_7 ? 1'h0 : _T_28; // @[Lookup.scala 33:37]
  wire  _T_30 = _T_5 ? 1'h0 : _T_29; // @[Lookup.scala 33:37]
  wire  _T_31 = _T_3 | _T_30; // @[Lookup.scala 33:37]
  wire  _T_33 = _T_19 | _T_21; // @[Lookup.scala 33:37]
  wire  _T_34 = _T_17 ? 1'h0 : _T_33; // @[Lookup.scala 33:37]
  wire  _T_35 = _T_15 ? 1'h0 : _T_34; // @[Lookup.scala 33:37]
  wire  _T_36 = _T_13 ? 1'h0 : _T_35; // @[Lookup.scala 33:37]
  wire  _T_37 = _T_11 ? 1'h0 : _T_36; // @[Lookup.scala 33:37]
  wire  _T_38 = _T_9 ? 1'h0 : _T_37; // @[Lookup.scala 33:37]
  wire  _T_39 = _T_7 ? 1'h0 : _T_38; // @[Lookup.scala 33:37]
  wire  _T_40 = _T_5 ? 1'h0 : _T_39; // @[Lookup.scala 33:37]
  wire  _T_41 = _T_3 | _T_40; // @[Lookup.scala 33:37]
  wire  _T_45 = _T_15 | _T_17; // @[Lookup.scala 33:37]
  wire  _T_46 = _T_13 | _T_45; // @[Lookup.scala 33:37]
  wire  _T_47 = _T_11 ? 1'h0 : _T_46; // @[Lookup.scala 33:37]
  wire  _T_48 = _T_9 ? 1'h0 : _T_47; // @[Lookup.scala 33:37]
  wire  _T_49 = _T_7 ? 1'h0 : _T_48; // @[Lookup.scala 33:37]
  wire  _T_50 = _T_5 ? 1'h0 : _T_49; // @[Lookup.scala 33:37]
  wire  _T_51 = _T_3 ? 1'h0 : _T_50; // @[Lookup.scala 33:37]
  wire [1:0] _T_54 = _T_17 ? 2'h2 : {{1'd0}, _T_19}; // @[Lookup.scala 33:37]
  wire [1:0] _T_55 = _T_15 ? 2'h2 : _T_54; // @[Lookup.scala 33:37]
  wire [1:0] _T_56 = _T_13 ? 2'h1 : _T_55; // @[Lookup.scala 33:37]
  wire [1:0] _T_57 = _T_11 ? 2'h0 : _T_56; // @[Lookup.scala 33:37]
  wire [1:0] _T_58 = _T_9 ? 2'h0 : _T_57; // @[Lookup.scala 33:37]
  wire [1:0] _T_59 = _T_7 ? 2'h1 : _T_58; // @[Lookup.scala 33:37]
  wire [1:0] _T_60 = _T_5 ? 2'h1 : _T_59; // @[Lookup.scala 33:37]
  wire [1:0] _T_61 = _T_3 ? 2'h1 : _T_60; // @[Lookup.scala 33:37]
  wire  _T_69 = _T_7 ? 1'h0 : _T_9; // @[Lookup.scala 33:37]
  wire  _T_70 = _T_5 ? 1'h0 : _T_69; // @[Lookup.scala 33:37]
  wire  _T_71 = _T_3 ? 1'h0 : _T_70; // @[Lookup.scala 33:37]
  wire [1:0] _T_74 = _T_17 ? 2'h3 : 2'h0; // @[Lookup.scala 33:37]
  wire [1:0] _T_75 = _T_15 ? 2'h2 : _T_74; // @[Lookup.scala 33:37]
  wire [1:0] _T_76 = _T_13 ? 2'h0 : _T_75; // @[Lookup.scala 33:37]
  wire [1:0] _T_77 = _T_11 ? 2'h0 : _T_76; // @[Lookup.scala 33:37]
  wire [1:0] _T_78 = _T_9 ? 2'h0 : _T_77; // @[Lookup.scala 33:37]
  wire [1:0] _T_79 = _T_7 ? 2'h0 : _T_78; // @[Lookup.scala 33:37]
  wire [1:0] _T_80 = _T_5 ? 2'h0 : _T_79; // @[Lookup.scala 33:37]
  wire [1:0] _T_81 = _T_3 ? 2'h0 : _T_80; // @[Lookup.scala 33:37]
  wire  _T_88 = _T_9 ? 1'h0 : _T_11; // @[Lookup.scala 33:37]
  wire  _T_89 = _T_7 ? 1'h0 : _T_88; // @[Lookup.scala 33:37]
  wire  _T_90 = _T_5 ? 1'h0 : _T_89; // @[Lookup.scala 33:37]
  wire  _T_91 = _T_3 ? 1'h0 : _T_90; // @[Lookup.scala 33:37]
  wire [1:0] _T_99 = _T_7 ? 2'h3 : 2'h0; // @[Lookup.scala 33:37]
  wire [1:0] _T_100 = _T_5 ? 2'h2 : _T_99; // @[Lookup.scala 33:37]
  wire [1:0] _T_101 = _T_3 ? 2'h0 : _T_100; // @[Lookup.scala 33:37]
  wire  _T_111 = _T_3 ? 1'h0 : _T_5; // @[Lookup.scala 33:37]
  wire  _T_114 = _T_17 | _T_33; // @[Lookup.scala 33:37]
  wire  _T_115 = _T_15 | _T_114; // @[Lookup.scala 33:37]
  wire  _T_116 = _T_13 | _T_115; // @[Lookup.scala 33:37]
  wire  _T_117 = _T_11 | _T_116; // @[Lookup.scala 33:37]
  wire  _T_118 = _T_9 ? 1'h0 : _T_117; // @[Lookup.scala 33:37]
  wire  _T_119 = _T_7 ? 1'h0 : _T_118; // @[Lookup.scala 33:37]
  wire  _T_120 = _T_5 | _T_119; // @[Lookup.scala 33:37]
  wire  _T_121 = _T_3 | _T_120; // @[Lookup.scala 33:37]
  wire  _T_141 = _T_3 ? 1'h0 : _T_40; // @[Lookup.scala 33:37]
  assign io_itype = _T_1 ? 1'h0 : _T_31; // @[control.scala 77:19]
  assign io_aluop = _T_1 | _T_41; // @[control.scala 78:19]
  assign io_src1 = _T_1 ? 1'h0 : _T_51; // @[control.scala 79:19]
  assign io_src2 = _T_1 ? 2'h0 : _T_61; // @[control.scala 80:19]
  assign io_branch = _T_1 ? 1'h0 : _T_71; // @[control.scala 81:19]
  assign io_jumptype = _T_1 ? 2'h0 : _T_81; // @[control.scala 82:19]
  assign io_resultselect = _T_1 ? 1'h0 : _T_91; // @[control.scala 83:19]
  assign io_memop = _T_1 ? 2'h0 : _T_101; // @[control.scala 84:19]
  assign io_toreg = _T_1 ? 1'h0 : _T_111; // @[control.scala 85:19]
  assign io_regwrite = _T_1 | _T_121; // @[control.scala 86:19]
  assign io_wordinst = _T_1 ? 1'h0 : _T_141; // @[control.scala 88:19]
endmodule
module ImmediateGenerator(
  input  [63:0] io_instruction,
  output [63:0] io_sextImm
);
  wire [6:0] opcode = io_instruction[6:0]; // @[helpers.scala 44:30]
  wire  _T = 7'h37 == opcode; // @[Conditional.scala 37:30]
  wire [31:0] _T_4 = io_instruction[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_7 = {_T_4,io_instruction[31:12],12'h0}; // @[Cat.scala 30:58]
  wire  _T_8 = 7'h17 == opcode; // @[Conditional.scala 37:30]
  wire  _T_16 = 7'h6f == opcode; // @[Conditional.scala 37:30]
  wire [19:0] _T_23 = {io_instruction[31],io_instruction[19:12],io_instruction[20],io_instruction[30:21]}; // @[Cat.scala 30:58]
  wire [42:0] _T_26 = _T_23[19] ? 43'h7ffffffffff : 43'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_28 = {_T_26,io_instruction[31],io_instruction[19:12],io_instruction[20],io_instruction[30:21],1'h0}; // @[Cat.scala 30:58]
  wire  _T_29 = 7'h67 == opcode; // @[Conditional.scala 37:30]
  wire [51:0] _T_33 = io_instruction[31] ? 52'hfffffffffffff : 52'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_34 = {_T_33,io_instruction[31:20]}; // @[Cat.scala 30:58]
  wire  _T_35 = 7'h63 == opcode; // @[Conditional.scala 37:30]
  wire [11:0] _T_42 = {io_instruction[31],io_instruction[7],io_instruction[30:25],io_instruction[11:8]}; // @[Cat.scala 30:58]
  wire [50:0] _T_45 = _T_42[11] ? 51'h7ffffffffffff : 51'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_47 = {_T_45,io_instruction[31],io_instruction[7],io_instruction[30:25],io_instruction[11:8],1'h0}; // @[Cat.scala 30:58]
  wire  _T_48 = 7'h3 == opcode; // @[Conditional.scala 37:30]
  wire  _T_54 = 7'h23 == opcode; // @[Conditional.scala 37:30]
  wire [11:0] _T_57 = {io_instruction[31:25],io_instruction[11:7]}; // @[Cat.scala 30:58]
  wire [51:0] _T_60 = _T_57[11] ? 52'hfffffffffffff : 52'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_61 = {_T_60,io_instruction[31:25],io_instruction[11:7]}; // @[Cat.scala 30:58]
  wire  _T_62 = 7'h13 == opcode; // @[Conditional.scala 37:30]
  wire  _T_68 = 7'h1b == opcode; // @[Conditional.scala 37:30]
  wire  _T_74 = 7'h73 == opcode; // @[Conditional.scala 37:30]
  wire [63:0] _T_77 = {59'h0,io_instruction[19:15]}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_0 = _T_74 ? _T_77 : 64'h0; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_1 = _T_68 ? _T_34 : _GEN_0; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_2 = _T_62 ? _T_34 : _GEN_1; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_3 = _T_54 ? _T_61 : _GEN_2; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_4 = _T_48 ? _T_34 : _GEN_3; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_5 = _T_35 ? _T_47 : _GEN_4; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_6 = _T_29 ? _T_34 : _GEN_5; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_7 = _T_16 ? _T_28 : _GEN_6; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_8 = _T_8 ? _T_7 : _GEN_7; // @[Conditional.scala 39:67]
  assign io_sextImm = _T ? _T_7 : _GEN_8; // @[helpers.scala 42:14 helpers.scala 52:18 helpers.scala 59:18 helpers.scala 66:18 helpers.scala 70:18 helpers.scala 75:18 helpers.scala 79:18 helpers.scala 83:18 helpers.scala 87:18 helpers.scala 91:18 helpers.scala 94:18]
endmodule
module ALUControl(
  input        io_aluop,
  input        io_itype,
  input  [6:0] io_funct7,
  input  [2:0] io_funct3,
  input        io_wordinst,
  output [4:0] io_operation
);
  wire  _T = ~io_aluop; // @[alucontrol.scala 32:18]
  wire  _T_1 = io_funct3 == 3'h0; // @[alucontrol.scala 35:21]
  wire  _T_2 = io_funct7 == 7'h0; // @[alucontrol.scala 36:34]
  wire  _T_3 = io_itype | _T_2; // @[alucontrol.scala 36:22]
  wire [4:0] _GEN_0 = io_wordinst ? 5'h17 : 5'h7; // @[alucontrol.scala 37:28]
  wire  _T_4 = io_funct7 == 7'h20; // @[alucontrol.scala 42:30]
  wire [4:0] _GEN_1 = io_wordinst ? 5'h14 : 5'h4; // @[alucontrol.scala 43:36]
  wire [4:0] _GEN_2 = _T_4 ? _GEN_1 : 5'h1f; // @[alucontrol.scala 42:48]
  wire [4:0] _GEN_3 = _T_3 ? _GEN_0 : _GEN_2; // @[alucontrol.scala 36:52]
  wire  _T_5 = io_funct3 == 3'h1; // @[alucontrol.scala 51:28]
  wire [4:0] _GEN_4 = io_wordinst ? 5'h18 : 5'h8; // @[alucontrol.scala 52:26]
  wire  _T_6 = io_funct3 == 3'h2; // @[alucontrol.scala 57:28]
  wire  _T_7 = io_funct3 == 3'h3; // @[alucontrol.scala 59:28]
  wire  _T_8 = io_funct3 == 3'h4; // @[alucontrol.scala 61:28]
  wire  _T_9 = io_funct3 == 3'h5; // @[alucontrol.scala 63:28]
  wire [4:0] _GEN_5 = io_wordinst ? 5'h12 : 5'h2; // @[alucontrol.scala 65:28]
  wire [4:0] _GEN_6 = io_wordinst ? 5'h13 : 5'h3; // @[alucontrol.scala 71:28]
  wire [4:0] _GEN_7 = _T_4 ? _GEN_6 : 5'h1f; // @[alucontrol.scala 70:48]
  wire [4:0] _GEN_8 = _T_2 ? _GEN_5 : _GEN_7; // @[alucontrol.scala 64:41]
  wire  _T_12 = io_funct3 == 3'h6; // @[alucontrol.scala 79:28]
  wire [2:0] _GEN_9 = _T_12 ? 3'h5 : 3'h6; // @[alucontrol.scala 79:42]
  wire [4:0] _GEN_10 = _T_9 ? _GEN_8 : {{2'd0}, _GEN_9}; // @[alucontrol.scala 63:42]
  wire [4:0] _GEN_11 = _T_8 ? 5'h0 : _GEN_10; // @[alucontrol.scala 61:42]
  wire [4:0] _GEN_12 = _T_7 ? 5'h1 : _GEN_11; // @[alucontrol.scala 59:42]
  wire [4:0] _GEN_13 = _T_6 ? 5'h9 : _GEN_12; // @[alucontrol.scala 57:42]
  wire [4:0] _GEN_14 = _T_5 ? _GEN_4 : _GEN_13; // @[alucontrol.scala 51:42]
  wire [4:0] _GEN_15 = _T_1 ? _GEN_3 : _GEN_14; // @[alucontrol.scala 35:35]
  assign io_operation = _T ? 5'h7 : _GEN_15; // @[alucontrol.scala 33:18 alucontrol.scala 38:24 alucontrol.scala 40:24 alucontrol.scala 44:24 alucontrol.scala 46:24 alucontrol.scala 49:22 alucontrol.scala 53:22 alucontrol.scala 55:22 alucontrol.scala 58:20 alucontrol.scala 60:20 alucontrol.scala 62:20 alucontrol.scala 66:24 alucontrol.scala 68:24 alucontrol.scala 72:24 alucontrol.scala 74:24 alucontrol.scala 77:22 alucontrol.scala 80:20 alucontrol.scala 82:20]
endmodule
module ALU(
  input  [4:0]  io_operation,
  input  [63:0] io_inputx,
  input  [63:0] io_inputy,
  output [63:0] io_result
);
  wire  wordinst = io_operation[4]; // @[alu.scala 25:34]
  wire [3:0] aluop = io_operation[3:0]; // @[alu.scala 26:27]
  wire [31:0] operand1_32 = io_inputx[31:0]; // @[alu.scala 30:30]
  wire [31:0] operand2_32 = io_inputy[31:0]; // @[alu.scala 31:30]
  wire  _T_2 = aluop == 4'h6; // @[alu.scala 33:15]
  wire [63:0] _T_3 = io_inputx & io_inputy; // @[alu.scala 34:28]
  wire  _T_4 = aluop == 4'h5; // @[alu.scala 36:20]
  wire [63:0] _T_5 = io_inputx | io_inputy; // @[alu.scala 37:28]
  wire  _T_6 = aluop == 4'h7; // @[alu.scala 39:20]
  wire [31:0] _T_9 = operand1_32 + operand2_32; // @[alu.scala 41:49]
  wire [31:0] _T_12 = _T_9[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_14 = {_T_12,_T_9}; // @[Cat.scala 30:58]
  wire [63:0] _T_16 = io_inputx + io_inputy; // @[alu.scala 43:30]
  wire [63:0] _GEN_0 = wordinst ? _T_14 : _T_16; // @[alu.scala 40:32]
  wire  _T_17 = aluop == 4'h4; // @[alu.scala 46:20]
  wire [31:0] _T_20 = operand1_32 - operand2_32; // @[alu.scala 48:49]
  wire [31:0] _T_23 = _T_20[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_25 = {_T_23,_T_20}; // @[Cat.scala 30:58]
  wire [63:0] _T_27 = io_inputx - io_inputy; // @[alu.scala 50:30]
  wire [63:0] _GEN_1 = wordinst ? _T_25 : _T_27; // @[alu.scala 47:32]
  wire  _T_28 = aluop == 4'h3; // @[alu.scala 53:20]
  wire [31:0] _T_30 = io_inputx[31:0]; // @[alu.scala 55:50]
  wire [31:0] _T_33 = $signed(_T_30) >>> operand2_32[4:0]; // @[alu.scala 55:79]
  wire [31:0] _T_36 = _T_33[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_38 = {_T_36,_T_33}; // @[Cat.scala 30:58]
  wire [63:0] _T_42 = $signed(io_inputx) >>> io_inputy[5:0]; // @[alu.scala 58:58]
  wire [63:0] _GEN_2 = wordinst ? _T_38 : _T_42; // @[alu.scala 54:32]
  wire  _T_43 = aluop == 4'h1; // @[alu.scala 61:20]
  wire  _T_44 = io_inputx < io_inputy; // @[alu.scala 62:29]
  wire  _T_45 = aluop == 4'h0; // @[alu.scala 64:20]
  wire [63:0] _T_46 = io_inputx ^ io_inputy; // @[alu.scala 65:28]
  wire  _T_47 = aluop == 4'h2; // @[alu.scala 67:20]
  wire [31:0] _T_50 = operand1_32 >> operand2_32[4:0]; // @[alu.scala 69:49]
  wire [31:0] _T_53 = _T_50[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_55 = {_T_53,_T_50}; // @[Cat.scala 30:58]
  wire [63:0] _T_57 = io_inputx >> io_inputy[5:0]; // @[alu.scala 71:30]
  wire [63:0] _GEN_3 = wordinst ? _T_55 : _T_57; // @[alu.scala 68:32]
  wire  _T_58 = aluop == 4'h9; // @[alu.scala 74:20]
  wire  _T_61 = $signed(io_inputx) < $signed(io_inputy); // @[alu.scala 75:36]
  wire  _T_62 = aluop == 4'h8; // @[alu.scala 77:20]
  wire [62:0] _GEN_20 = {{31'd0}, operand1_32}; // @[alu.scala 79:49]
  wire [62:0] _T_65 = _GEN_20 << operand2_32[4:0]; // @[alu.scala 79:49]
  wire [31:0] _T_68 = _T_65[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_70 = {_T_68,_T_65[31:0]}; // @[Cat.scala 30:58]
  wire [126:0] _GEN_21 = {{63'd0}, io_inputx}; // @[alu.scala 81:30]
  wire [126:0] _T_72 = _GEN_21 << io_inputy[5:0]; // @[alu.scala 81:30]
  wire [126:0] _GEN_4 = wordinst ? {{63'd0}, _T_70} : _T_72; // @[alu.scala 78:32]
  wire  _T_73 = aluop == 4'ha; // @[alu.scala 84:20]
  wire [63:0] _T_75 = ~_T_5; // @[alu.scala 85:18]
  wire  _T_76 = aluop == 4'hb; // @[alu.scala 87:20]
  wire  _T_79 = $signed(io_inputx) >= $signed(io_inputy); // @[alu.scala 88:36]
  wire  _T_80 = aluop == 4'hc; // @[alu.scala 90:20]
  wire  _T_81 = io_inputx >= io_inputy; // @[alu.scala 91:29]
  wire  _T_82 = aluop == 4'hd; // @[alu.scala 93:20]
  wire  _T_83 = io_inputx == io_inputy; // @[alu.scala 94:28]
  wire  _T_84 = aluop == 4'he; // @[alu.scala 96:20]
  wire  _T_85 = io_inputx != io_inputy; // @[alu.scala 97:28]
  wire  _GEN_5 = _T_84 & _T_85; // @[alu.scala 96:35]
  wire  _GEN_6 = _T_82 ? _T_83 : _GEN_5; // @[alu.scala 93:35]
  wire  _GEN_7 = _T_80 ? _T_81 : _GEN_6; // @[alu.scala 90:35]
  wire  _GEN_8 = _T_76 ? _T_79 : _GEN_7; // @[alu.scala 87:35]
  wire [63:0] _GEN_9 = _T_73 ? _T_75 : {{63'd0}, _GEN_8}; // @[alu.scala 84:35]
  wire [126:0] _GEN_10 = _T_62 ? _GEN_4 : {{63'd0}, _GEN_9}; // @[alu.scala 77:35]
  wire [126:0] _GEN_11 = _T_58 ? {{126'd0}, _T_61} : _GEN_10; // @[alu.scala 74:35]
  wire [126:0] _GEN_12 = _T_47 ? {{63'd0}, _GEN_3} : _GEN_11; // @[alu.scala 67:35]
  wire [126:0] _GEN_13 = _T_45 ? {{63'd0}, _T_46} : _GEN_12; // @[alu.scala 64:35]
  wire [126:0] _GEN_14 = _T_43 ? {{126'd0}, _T_44} : _GEN_13; // @[alu.scala 61:35]
  wire [126:0] _GEN_15 = _T_28 ? {{63'd0}, _GEN_2} : _GEN_14; // @[alu.scala 53:35]
  wire [126:0] _GEN_16 = _T_17 ? {{63'd0}, _GEN_1} : _GEN_15; // @[alu.scala 46:35]
  wire [126:0] _GEN_17 = _T_6 ? {{63'd0}, _GEN_0} : _GEN_16; // @[alu.scala 39:35]
  wire [126:0] _GEN_18 = _T_4 ? {{63'd0}, _T_5} : _GEN_17; // @[alu.scala 36:35]
  wire [126:0] _GEN_19 = _T_2 ? {{63'd0}, _T_3} : _GEN_18; // @[alu.scala 33:30]
  assign io_result = _GEN_19[63:0]; // @[alu.scala 34:15 alu.scala 37:15 alu.scala 41:17 alu.scala 43:17 alu.scala 48:17 alu.scala 50:17 alu.scala 55:17 alu.scala 58:17 alu.scala 62:15 alu.scala 65:15 alu.scala 69:17 alu.scala 71:17 alu.scala 75:15 alu.scala 79:17 alu.scala 81:17 alu.scala 85:15 alu.scala 88:15 alu.scala 91:15 alu.scala 94:15 alu.scala 97:15 alu.scala 100:15]
endmodule
module NextPC(
  input         io_branch,
  input  [1:0]  io_jumptype,
  input  [63:0] io_inputx,
  input  [63:0] io_inputy,
  input  [2:0]  io_funct3,
  input  [63:0] io_pc,
  input  [63:0] io_imm,
  input         io_pipeB_valid,
  output [63:0] io_nextpc,
  output        io_taken
);
  wire  _T = io_funct3 == 3'h0; // @[nextpc.scala 39:24]
  wire  _T_1 = io_inputx == io_inputy; // @[nextpc.scala 39:50]
  wire  _T_2 = _T & _T_1; // @[nextpc.scala 39:37]
  wire  _T_3 = io_funct3 == 3'h1; // @[nextpc.scala 40:24]
  wire  _T_4 = io_inputx != io_inputy; // @[nextpc.scala 40:50]
  wire  _T_5 = _T_3 & _T_4; // @[nextpc.scala 40:37]
  wire  _T_6 = _T_2 | _T_5; // @[nextpc.scala 40:10]
  wire  _T_7 = io_funct3 == 3'h4; // @[nextpc.scala 41:24]
  wire  _T_10 = $signed(io_inputx) < $signed(io_inputy); // @[nextpc.scala 41:57]
  wire  _T_11 = _T_7 & _T_10; // @[nextpc.scala 41:37]
  wire  _T_12 = _T_6 | _T_11; // @[nextpc.scala 41:10]
  wire  _T_13 = io_funct3 == 3'h5; // @[nextpc.scala 42:24]
  wire  _T_16 = $signed(io_inputx) >= $signed(io_inputy); // @[nextpc.scala 42:57]
  wire  _T_17 = _T_13 & _T_16; // @[nextpc.scala 42:37]
  wire  _T_18 = _T_12 | _T_17; // @[nextpc.scala 42:10]
  wire  _T_19 = io_funct3 == 3'h6; // @[nextpc.scala 43:24]
  wire  _T_20 = io_inputx < io_inputy; // @[nextpc.scala 43:50]
  wire  _T_21 = _T_19 & _T_20; // @[nextpc.scala 43:37]
  wire  _T_22 = _T_18 | _T_21; // @[nextpc.scala 43:10]
  wire  _T_23 = io_funct3 == 3'h7; // @[nextpc.scala 44:24]
  wire  _T_24 = io_inputx >= io_inputy; // @[nextpc.scala 44:50]
  wire  _T_25 = _T_23 & _T_24; // @[nextpc.scala 44:37]
  wire  _T_26 = _T_22 | _T_25; // @[nextpc.scala 44:10]
  wire [63:0] _T_28 = io_pc + io_imm; // @[nextpc.scala 45:26]
  wire [63:0] _T_30 = io_pc + 64'h8; // @[nextpc.scala 49:28]
  wire [63:0] _T_32 = io_pc + 64'h4; // @[nextpc.scala 51:28]
  wire [63:0] _GEN_0 = io_pipeB_valid ? _T_30 : _T_32; // @[nextpc.scala 48:29]
  wire [63:0] _GEN_1 = _T_26 ? _T_28 : _GEN_0; // @[nextpc.scala 44:65]
  wire  _T_33 = io_jumptype != 2'h0; // @[nextpc.scala 55:28]
  wire [63:0] _T_36 = io_inputx + io_imm; // @[nextpc.scala 56:48]
  wire [63:0] _T_39 = io_jumptype[0] ? _T_36 : _T_28; // @[nextpc.scala 56:21]
  wire [63:0] _GEN_4 = _T_33 ? _T_39 : _GEN_0; // @[nextpc.scala 55:37]
  assign io_nextpc = io_branch ? _GEN_1 : _GEN_4; // @[nextpc.scala 45:17 nextpc.scala 49:19 nextpc.scala 51:19 nextpc.scala 56:15 nextpc.scala 61:17 nextpc.scala 63:17]
  assign io_taken = io_branch ? _T_26 : _T_33; // @[nextpc.scala 46:16 nextpc.scala 53:16 nextpc.scala 58:14 nextpc.scala 65:14]
endmodule
module ForwardingUnit(
  input  [4:0] io_ex_pipeA_rs1,
  input  [4:0] io_ex_pipeA_rs2,
  input  [4:0] io_ex_pipeB_rs1,
  input  [4:0] io_ex_pipeB_rs2,
  input  [4:0] io_mem_pipeA_rd,
  input        io_mem_pipeA_rw,
  input  [4:0] io_mem_pipeB_rd,
  input        io_mem_pipeB_rw,
  input  [4:0] io_wb_pipeA_rd,
  input        io_wb_pipeA_rw,
  input  [4:0] io_wb_pipeB_rd,
  input        io_wb_pipeB_rw,
  output [2:0] io_pipeA_forward1,
  output [2:0] io_pipeA_forward2,
  output [2:0] io_pipeB_forward1,
  output [2:0] io_pipeB_forward2
);
  wire  _T_1 = io_mem_pipeB_rd == io_ex_pipeA_rs1; // @[forwarding.scala 79:62]
  wire  _T_2 = io_mem_pipeB_rw & _T_1; // @[forwarding.scala 79:43]
  wire  _T_3 = io_ex_pipeA_rs1 != 5'h0; // @[forwarding.scala 79:101]
  wire  _T_4 = _T_2 & _T_3; // @[forwarding.scala 79:82]
  wire  _T_6 = io_mem_pipeA_rd == io_ex_pipeA_rs1; // @[forwarding.scala 81:62]
  wire  _T_7 = io_mem_pipeA_rw & _T_6; // @[forwarding.scala 81:43]
  wire  _T_9 = _T_7 & _T_3; // @[forwarding.scala 81:82]
  wire  _T_11 = io_wb_pipeB_rd == io_ex_pipeA_rs1; // @[forwarding.scala 83:62]
  wire  _T_12 = io_wb_pipeB_rw & _T_11; // @[forwarding.scala 83:43]
  wire  _T_14 = _T_12 & _T_3; // @[forwarding.scala 83:82]
  wire  _T_16 = io_wb_pipeA_rd == io_ex_pipeA_rs1; // @[forwarding.scala 85:62]
  wire  _T_17 = io_wb_pipeA_rw & _T_16; // @[forwarding.scala 85:43]
  wire  _T_19 = _T_17 & _T_3; // @[forwarding.scala 85:82]
  wire [1:0] _GEN_0 = _T_19 ? 2'h3 : 2'h0; // @[forwarding.scala 85:110]
  wire [2:0] _GEN_1 = _T_14 ? 3'h4 : {{1'd0}, _GEN_0}; // @[forwarding.scala 83:110]
  wire [2:0] _GEN_2 = _T_9 ? 3'h1 : _GEN_1; // @[forwarding.scala 81:110]
  wire  _T_21 = io_mem_pipeB_rd == io_ex_pipeA_rs2; // @[forwarding.scala 92:62]
  wire  _T_22 = io_mem_pipeB_rw & _T_21; // @[forwarding.scala 92:43]
  wire  _T_23 = io_ex_pipeA_rs2 != 5'h0; // @[forwarding.scala 92:101]
  wire  _T_24 = _T_22 & _T_23; // @[forwarding.scala 92:82]
  wire  _T_26 = io_mem_pipeA_rd == io_ex_pipeA_rs2; // @[forwarding.scala 94:62]
  wire  _T_27 = io_mem_pipeA_rw & _T_26; // @[forwarding.scala 94:43]
  wire  _T_29 = _T_27 & _T_23; // @[forwarding.scala 94:82]
  wire  _T_31 = io_wb_pipeB_rd == io_ex_pipeA_rs2; // @[forwarding.scala 96:62]
  wire  _T_32 = io_wb_pipeB_rw & _T_31; // @[forwarding.scala 96:43]
  wire  _T_34 = _T_32 & _T_23; // @[forwarding.scala 96:82]
  wire  _T_36 = io_wb_pipeA_rd == io_ex_pipeA_rs2; // @[forwarding.scala 98:62]
  wire  _T_37 = io_wb_pipeA_rw & _T_36; // @[forwarding.scala 98:43]
  wire  _T_39 = _T_37 & _T_23; // @[forwarding.scala 98:82]
  wire [1:0] _GEN_4 = _T_39 ? 2'h3 : 2'h0; // @[forwarding.scala 98:110]
  wire [2:0] _GEN_5 = _T_34 ? 3'h4 : {{1'd0}, _GEN_4}; // @[forwarding.scala 96:110]
  wire [2:0] _GEN_6 = _T_29 ? 3'h1 : _GEN_5; // @[forwarding.scala 94:110]
  wire  _T_41 = io_mem_pipeB_rd == io_ex_pipeB_rs1; // @[forwarding.scala 105:62]
  wire  _T_42 = io_mem_pipeB_rw & _T_41; // @[forwarding.scala 105:43]
  wire  _T_43 = io_ex_pipeB_rs1 != 5'h0; // @[forwarding.scala 105:101]
  wire  _T_44 = _T_42 & _T_43; // @[forwarding.scala 105:82]
  wire  _T_46 = io_mem_pipeA_rd == io_ex_pipeB_rs1; // @[forwarding.scala 107:62]
  wire  _T_47 = io_mem_pipeA_rw & _T_46; // @[forwarding.scala 107:43]
  wire  _T_49 = _T_47 & _T_43; // @[forwarding.scala 107:82]
  wire  _T_51 = io_wb_pipeB_rd == io_ex_pipeB_rs1; // @[forwarding.scala 109:62]
  wire  _T_52 = io_wb_pipeB_rw & _T_51; // @[forwarding.scala 109:43]
  wire  _T_54 = _T_52 & _T_43; // @[forwarding.scala 109:82]
  wire  _T_56 = io_wb_pipeA_rd == io_ex_pipeB_rs1; // @[forwarding.scala 111:62]
  wire  _T_57 = io_wb_pipeA_rw & _T_56; // @[forwarding.scala 111:43]
  wire  _T_59 = _T_57 & _T_43; // @[forwarding.scala 111:82]
  wire [2:0] _GEN_8 = _T_59 ? 3'h4 : 3'h0; // @[forwarding.scala 111:110]
  wire [2:0] _GEN_9 = _T_54 ? 3'h5 : _GEN_8; // @[forwarding.scala 109:110]
  wire [2:0] _GEN_10 = _T_49 ? 3'h2 : _GEN_9; // @[forwarding.scala 107:110]
  wire  _T_61 = io_mem_pipeB_rd == io_ex_pipeB_rs2; // @[forwarding.scala 118:62]
  wire  _T_62 = io_mem_pipeB_rw & _T_61; // @[forwarding.scala 118:43]
  wire  _T_63 = io_ex_pipeB_rs2 != 5'h0; // @[forwarding.scala 118:101]
  wire  _T_64 = _T_62 & _T_63; // @[forwarding.scala 118:82]
  wire  _T_66 = io_mem_pipeA_rd == io_ex_pipeB_rs2; // @[forwarding.scala 120:62]
  wire  _T_67 = io_mem_pipeA_rw & _T_66; // @[forwarding.scala 120:43]
  wire  _T_69 = _T_67 & _T_63; // @[forwarding.scala 120:82]
  wire  _T_71 = io_wb_pipeB_rd == io_ex_pipeB_rs2; // @[forwarding.scala 122:62]
  wire  _T_72 = io_wb_pipeB_rw & _T_71; // @[forwarding.scala 122:43]
  wire  _T_74 = _T_72 & _T_63; // @[forwarding.scala 122:82]
  wire  _T_76 = io_wb_pipeA_rd == io_ex_pipeB_rs2; // @[forwarding.scala 124:62]
  wire  _T_77 = io_wb_pipeA_rw & _T_76; // @[forwarding.scala 124:43]
  wire  _T_79 = _T_77 & _T_63; // @[forwarding.scala 124:82]
  wire [2:0] _GEN_12 = _T_79 ? 3'h4 : 3'h0; // @[forwarding.scala 124:110]
  wire [2:0] _GEN_13 = _T_74 ? 3'h5 : _GEN_12; // @[forwarding.scala 122:110]
  wire [2:0] _GEN_14 = _T_69 ? 3'h2 : _GEN_13; // @[forwarding.scala 120:110]
  assign io_pipeA_forward1 = _T_4 ? 3'h2 : _GEN_2; // @[forwarding.scala 80:23 forwarding.scala 82:23 forwarding.scala 84:23 forwarding.scala 86:23 forwarding.scala 88:23]
  assign io_pipeA_forward2 = _T_24 ? 3'h2 : _GEN_6; // @[forwarding.scala 93:23 forwarding.scala 95:23 forwarding.scala 97:23 forwarding.scala 99:23 forwarding.scala 101:23]
  assign io_pipeB_forward1 = _T_44 ? 3'h3 : _GEN_10; // @[forwarding.scala 106:23 forwarding.scala 108:23 forwarding.scala 110:23 forwarding.scala 112:23 forwarding.scala 114:23]
  assign io_pipeB_forward2 = _T_64 ? 3'h3 : _GEN_14; // @[forwarding.scala 119:23 forwarding.scala 121:23 forwarding.scala 123:23 forwarding.scala 125:23 forwarding.scala 127:23]
endmodule
module HazardUnit(
  input  [4:0] io_id_pipeA_rs1,
  input  [4:0] io_id_pipeA_rs2,
  input  [4:0] io_id_pipeB_rs1,
  input  [4:0] io_id_pipeB_rs2,
  input        io_pipeA_idex_memread,
  input  [4:0] io_pipeA_idex_rd,
  input        io_pipeA_exmem_taken,
  input        io_pipeB_idex_memread,
  input  [4:0] io_pipeB_idex_rd,
  input        io_pipeB_exmem_taken,
  output       io_pcfromtaken,
  output       io_pcstall,
  output       io_if_id_stall,
  output       io_id_ex_flush,
  output       io_ex_mem_flush,
  output       io_if_id_flush
);
  wire  _T = io_pipeA_idex_rd == io_id_pipeA_rs1; // @[hazard.scala 70:71]
  wire  _T_1 = io_pipeA_idex_rd == io_id_pipeA_rs2; // @[hazard.scala 70:111]
  wire  _T_2 = _T | _T_1; // @[hazard.scala 70:91]
  wire  _T_3 = io_pipeA_idex_rd == io_id_pipeB_rs1; // @[hazard.scala 70:151]
  wire  _T_4 = _T_2 | _T_3; // @[hazard.scala 70:131]
  wire  _T_5 = io_pipeA_idex_rd == io_id_pipeB_rs2; // @[hazard.scala 70:191]
  wire  _T_6 = _T_4 | _T_5; // @[hazard.scala 70:171]
  wire  stalling_due_to_pipeA = io_pipeA_idex_memread & _T_6; // @[hazard.scala 70:50]
  wire  _T_8 = io_pipeB_idex_rd == io_id_pipeA_rs1; // @[hazard.scala 71:71]
  wire  _T_9 = io_pipeB_idex_rd == io_id_pipeA_rs2; // @[hazard.scala 71:111]
  wire  _T_10 = _T_8 | _T_9; // @[hazard.scala 71:91]
  wire  _T_11 = io_pipeB_idex_rd == io_id_pipeB_rs1; // @[hazard.scala 71:151]
  wire  _T_12 = _T_10 | _T_11; // @[hazard.scala 71:131]
  wire  _T_13 = io_pipeB_idex_rd == io_id_pipeB_rs2; // @[hazard.scala 71:191]
  wire  _T_14 = _T_12 | _T_13; // @[hazard.scala 71:171]
  wire  stalling_due_to_pipeB = io_pipeB_idex_memread & _T_14; // @[hazard.scala 71:50]
  wire  _T_16 = io_pipeA_exmem_taken | io_pipeB_exmem_taken; // @[hazard.scala 73:30]
  wire  _T_17 = stalling_due_to_pipeB | stalling_due_to_pipeA; // @[hazard.scala 80:38]
  assign io_pcfromtaken = io_pipeA_exmem_taken | io_pipeB_exmem_taken; // @[hazard.scala 60:19 hazard.scala 74:21 hazard.scala 81:21]
  assign io_pcstall = _T_16 ? 1'h0 : _T_17; // @[hazard.scala 61:19 hazard.scala 75:21 hazard.scala 82:21]
  assign io_if_id_stall = _T_16 ? 1'h0 : _T_17; // @[hazard.scala 62:19 hazard.scala 76:21 hazard.scala 83:21]
  assign io_id_ex_flush = _T_16 | _T_17; // @[hazard.scala 63:19 hazard.scala 78:21 hazard.scala 84:21]
  assign io_ex_mem_flush = io_pipeA_exmem_taken | io_pipeB_exmem_taken; // @[hazard.scala 64:19 hazard.scala 79:21 hazard.scala 85:21]
  assign io_if_id_flush = io_pipeA_exmem_taken | io_pipeB_exmem_taken; // @[hazard.scala 65:19 hazard.scala 77:21 hazard.scala 86:21]
endmodule
module StageReg(
  input         clock,
  input         reset,
  input  [31:0] io_in_instruction,
  input  [63:0] io_in_pc,
  input         io_in_isValid,
  input         io_flush,
  input         io_valid,
  output [31:0] io_data_instruction,
  output [63:0] io_data_pc,
  output        io_data_isValid
);
  reg [31:0] reg_instruction; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_0;
  reg [63:0] reg_pc; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_1;
  reg  reg_isValid; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_2;
  assign io_data_instruction = reg_instruction; // @[stage-register.scala 45:11]
  assign io_data_pc = reg_pc; // @[stage-register.scala 45:11]
  assign io_data_isValid = reg_isValid; // @[stage-register.scala 45:11]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_instruction = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  reg_pc = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_isValid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_instruction <= 32'h0;
    end else if (io_flush) begin
      reg_instruction <= 32'h0;
    end else if (io_valid) begin
      reg_instruction <= io_in_instruction;
    end
    if (reset) begin
      reg_pc <= 64'h0;
    end else if (io_flush) begin
      reg_pc <= 64'h0;
    end else if (io_valid) begin
      reg_pc <= io_in_pc;
    end
    if (reset) begin
      reg_isValid <= 1'h0;
    end else if (io_flush) begin
      reg_isValid <= 1'h0;
    end else if (io_valid) begin
      reg_isValid <= io_in_isValid;
    end
  end
endmodule
module StageReg_2(
  input         clock,
  input         reset,
  input  [63:0] io_in_pc,
  input  [63:0] io_in_instruction,
  input  [63:0] io_in_sextImm,
  input  [63:0] io_in_readdata1,
  input  [63:0] io_in_readdata2,
  input         io_in_isValid,
  input         io_flush,
  output [63:0] io_data_pc,
  output [63:0] io_data_instruction,
  output [63:0] io_data_sextImm,
  output [63:0] io_data_readdata1,
  output [63:0] io_data_readdata2,
  output        io_data_isValid
);
  reg [63:0] reg_pc; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_0;
  reg [63:0] reg_instruction; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_1;
  reg [63:0] reg_sextImm; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_2;
  reg [63:0] reg_readdata1; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_3;
  reg [63:0] reg_readdata2; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_4;
  reg  reg_isValid; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_5;
  assign io_data_pc = reg_pc; // @[stage-register.scala 45:11]
  assign io_data_instruction = reg_instruction; // @[stage-register.scala 45:11]
  assign io_data_sextImm = reg_sextImm; // @[stage-register.scala 45:11]
  assign io_data_readdata1 = reg_readdata1; // @[stage-register.scala 45:11]
  assign io_data_readdata2 = reg_readdata2; // @[stage-register.scala 45:11]
  assign io_data_isValid = reg_isValid; // @[stage-register.scala 45:11]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  reg_pc = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  reg_instruction = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  reg_sextImm = _RAND_2[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  reg_readdata1 = _RAND_3[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  reg_readdata2 = _RAND_4[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  reg_isValid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_pc <= 64'h0;
    end else if (io_flush) begin
      reg_pc <= 64'h0;
    end else begin
      reg_pc <= io_in_pc;
    end
    if (reset) begin
      reg_instruction <= 64'h0;
    end else if (io_flush) begin
      reg_instruction <= 64'h0;
    end else begin
      reg_instruction <= io_in_instruction;
    end
    if (reset) begin
      reg_sextImm <= 64'h0;
    end else if (io_flush) begin
      reg_sextImm <= 64'h0;
    end else begin
      reg_sextImm <= io_in_sextImm;
    end
    if (reset) begin
      reg_readdata1 <= 64'h0;
    end else if (io_flush) begin
      reg_readdata1 <= 64'h0;
    end else begin
      reg_readdata1 <= io_in_readdata1;
    end
    if (reset) begin
      reg_readdata2 <= 64'h0;
    end else if (io_flush) begin
      reg_readdata2 <= 64'h0;
    end else begin
      reg_readdata2 <= io_in_readdata2;
    end
    if (reset) begin
      reg_isValid <= 1'h0;
    end else if (io_flush) begin
      reg_isValid <= 1'h0;
    end else begin
      reg_isValid <= io_in_isValid;
    end
  end
endmodule
module StageReg_4(
  input        clock,
  input        reset,
  input        io_in_ex_ctrl_itype,
  input        io_in_ex_ctrl_aluop,
  input        io_in_ex_ctrl_src1,
  input  [1:0] io_in_ex_ctrl_src2,
  input        io_in_ex_ctrl_branch,
  input  [1:0] io_in_ex_ctrl_jumptype,
  input        io_in_ex_ctrl_resultselect,
  input        io_in_ex_ctrl_wordinst,
  input  [1:0] io_in_mem_ctrl_memop,
  input        io_in_wb_ctrl_toreg,
  input        io_in_wb_ctrl_regwrite,
  input        io_flush,
  output       io_data_ex_ctrl_itype,
  output       io_data_ex_ctrl_aluop,
  output       io_data_ex_ctrl_src1,
  output [1:0] io_data_ex_ctrl_src2,
  output       io_data_ex_ctrl_branch,
  output [1:0] io_data_ex_ctrl_jumptype,
  output       io_data_ex_ctrl_resultselect,
  output       io_data_ex_ctrl_wordinst,
  output [1:0] io_data_mem_ctrl_memop,
  output       io_data_wb_ctrl_toreg,
  output       io_data_wb_ctrl_regwrite
);
  reg  reg_ex_ctrl_itype; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_0;
  reg  reg_ex_ctrl_aluop; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_1;
  reg  reg_ex_ctrl_src1; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_2;
  reg [1:0] reg_ex_ctrl_src2; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_3;
  reg  reg_ex_ctrl_branch; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_4;
  reg [1:0] reg_ex_ctrl_jumptype; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_5;
  reg  reg_ex_ctrl_resultselect; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_6;
  reg  reg_ex_ctrl_wordinst; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_7;
  reg [1:0] reg_mem_ctrl_memop; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_8;
  reg  reg_wb_ctrl_toreg; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_9;
  reg  reg_wb_ctrl_regwrite; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_10;
  assign io_data_ex_ctrl_itype = reg_ex_ctrl_itype; // @[stage-register.scala 45:11]
  assign io_data_ex_ctrl_aluop = reg_ex_ctrl_aluop; // @[stage-register.scala 45:11]
  assign io_data_ex_ctrl_src1 = reg_ex_ctrl_src1; // @[stage-register.scala 45:11]
  assign io_data_ex_ctrl_src2 = reg_ex_ctrl_src2; // @[stage-register.scala 45:11]
  assign io_data_ex_ctrl_branch = reg_ex_ctrl_branch; // @[stage-register.scala 45:11]
  assign io_data_ex_ctrl_jumptype = reg_ex_ctrl_jumptype; // @[stage-register.scala 45:11]
  assign io_data_ex_ctrl_resultselect = reg_ex_ctrl_resultselect; // @[stage-register.scala 45:11]
  assign io_data_ex_ctrl_wordinst = reg_ex_ctrl_wordinst; // @[stage-register.scala 45:11]
  assign io_data_mem_ctrl_memop = reg_mem_ctrl_memop; // @[stage-register.scala 45:11]
  assign io_data_wb_ctrl_toreg = reg_wb_ctrl_toreg; // @[stage-register.scala 45:11]
  assign io_data_wb_ctrl_regwrite = reg_wb_ctrl_regwrite; // @[stage-register.scala 45:11]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_ex_ctrl_itype = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  reg_ex_ctrl_aluop = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_ex_ctrl_src1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  reg_ex_ctrl_src2 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  reg_ex_ctrl_branch = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  reg_ex_ctrl_jumptype = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  reg_ex_ctrl_resultselect = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  reg_ex_ctrl_wordinst = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  reg_mem_ctrl_memop = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  reg_wb_ctrl_toreg = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  reg_wb_ctrl_regwrite = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_ex_ctrl_itype <= 1'h0;
    end else if (io_flush) begin
      reg_ex_ctrl_itype <= 1'h0;
    end else begin
      reg_ex_ctrl_itype <= io_in_ex_ctrl_itype;
    end
    if (reset) begin
      reg_ex_ctrl_aluop <= 1'h0;
    end else if (io_flush) begin
      reg_ex_ctrl_aluop <= 1'h0;
    end else begin
      reg_ex_ctrl_aluop <= io_in_ex_ctrl_aluop;
    end
    if (reset) begin
      reg_ex_ctrl_src1 <= 1'h0;
    end else if (io_flush) begin
      reg_ex_ctrl_src1 <= 1'h0;
    end else begin
      reg_ex_ctrl_src1 <= io_in_ex_ctrl_src1;
    end
    if (reset) begin
      reg_ex_ctrl_src2 <= 2'h0;
    end else if (io_flush) begin
      reg_ex_ctrl_src2 <= 2'h0;
    end else begin
      reg_ex_ctrl_src2 <= io_in_ex_ctrl_src2;
    end
    if (reset) begin
      reg_ex_ctrl_branch <= 1'h0;
    end else if (io_flush) begin
      reg_ex_ctrl_branch <= 1'h0;
    end else begin
      reg_ex_ctrl_branch <= io_in_ex_ctrl_branch;
    end
    if (reset) begin
      reg_ex_ctrl_jumptype <= 2'h0;
    end else if (io_flush) begin
      reg_ex_ctrl_jumptype <= 2'h0;
    end else begin
      reg_ex_ctrl_jumptype <= io_in_ex_ctrl_jumptype;
    end
    if (reset) begin
      reg_ex_ctrl_resultselect <= 1'h0;
    end else if (io_flush) begin
      reg_ex_ctrl_resultselect <= 1'h0;
    end else begin
      reg_ex_ctrl_resultselect <= io_in_ex_ctrl_resultselect;
    end
    if (reset) begin
      reg_ex_ctrl_wordinst <= 1'h0;
    end else if (io_flush) begin
      reg_ex_ctrl_wordinst <= 1'h0;
    end else begin
      reg_ex_ctrl_wordinst <= io_in_ex_ctrl_wordinst;
    end
    if (reset) begin
      reg_mem_ctrl_memop <= 2'h0;
    end else if (io_flush) begin
      reg_mem_ctrl_memop <= 2'h0;
    end else begin
      reg_mem_ctrl_memop <= io_in_mem_ctrl_memop;
    end
    if (reset) begin
      reg_wb_ctrl_toreg <= 1'h0;
    end else if (io_flush) begin
      reg_wb_ctrl_toreg <= 1'h0;
    end else begin
      reg_wb_ctrl_toreg <= io_in_wb_ctrl_toreg;
    end
    if (reset) begin
      reg_wb_ctrl_regwrite <= 1'h0;
    end else if (io_flush) begin
      reg_wb_ctrl_regwrite <= 1'h0;
    end else begin
      reg_wb_ctrl_regwrite <= io_in_wb_ctrl_regwrite;
    end
  end
endmodule
module StageReg_6(
  input         clock,
  input         reset,
  input  [63:0] io_in_ex_result,
  input  [63:0] io_in_mem_writedata,
  input  [63:0] io_in_nextpc,
  input         io_in_taken,
  input  [63:0] io_in_instruction,
  input         io_in_isValid,
  input         io_flush,
  output [63:0] io_data_ex_result,
  output [63:0] io_data_mem_writedata,
  output [63:0] io_data_nextpc,
  output        io_data_taken,
  output [63:0] io_data_instruction,
  output        io_data_isValid
);
  reg [63:0] reg_ex_result; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_0;
  reg [63:0] reg_mem_writedata; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_1;
  reg [63:0] reg_nextpc; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_2;
  reg  reg_taken; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_3;
  reg [63:0] reg_instruction; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_4;
  reg  reg_isValid; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_5;
  assign io_data_ex_result = reg_ex_result; // @[stage-register.scala 45:11]
  assign io_data_mem_writedata = reg_mem_writedata; // @[stage-register.scala 45:11]
  assign io_data_nextpc = reg_nextpc; // @[stage-register.scala 45:11]
  assign io_data_taken = reg_taken; // @[stage-register.scala 45:11]
  assign io_data_instruction = reg_instruction; // @[stage-register.scala 45:11]
  assign io_data_isValid = reg_isValid; // @[stage-register.scala 45:11]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  reg_ex_result = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  reg_mem_writedata = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  reg_nextpc = _RAND_2[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  reg_taken = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  reg_instruction = _RAND_4[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  reg_isValid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_ex_result <= 64'h0;
    end else if (io_flush) begin
      reg_ex_result <= 64'h0;
    end else begin
      reg_ex_result <= io_in_ex_result;
    end
    if (reset) begin
      reg_mem_writedata <= 64'h0;
    end else if (io_flush) begin
      reg_mem_writedata <= 64'h0;
    end else begin
      reg_mem_writedata <= io_in_mem_writedata;
    end
    if (reset) begin
      reg_nextpc <= 64'h0;
    end else if (io_flush) begin
      reg_nextpc <= 64'h0;
    end else begin
      reg_nextpc <= io_in_nextpc;
    end
    if (reset) begin
      reg_taken <= 1'h0;
    end else if (io_flush) begin
      reg_taken <= 1'h0;
    end else begin
      reg_taken <= io_in_taken;
    end
    if (reset) begin
      reg_instruction <= 64'h0;
    end else if (io_flush) begin
      reg_instruction <= 64'h0;
    end else begin
      reg_instruction <= io_in_instruction;
    end
    if (reset) begin
      reg_isValid <= 1'h0;
    end else if (io_flush) begin
      reg_isValid <= 1'h0;
    end else begin
      reg_isValid <= io_in_isValid;
    end
  end
endmodule
module StageReg_8(
  input        clock,
  input        reset,
  input  [1:0] io_in_mem_ctrl_memop,
  input        io_in_wb_ctrl_toreg,
  input        io_in_wb_ctrl_regwrite,
  input        io_flush,
  output [1:0] io_data_mem_ctrl_memop,
  output       io_data_wb_ctrl_toreg,
  output       io_data_wb_ctrl_regwrite
);
  reg [1:0] reg_mem_ctrl_memop; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_0;
  reg  reg_wb_ctrl_toreg; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_1;
  reg  reg_wb_ctrl_regwrite; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_2;
  assign io_data_mem_ctrl_memop = reg_mem_ctrl_memop; // @[stage-register.scala 45:11]
  assign io_data_wb_ctrl_toreg = reg_wb_ctrl_toreg; // @[stage-register.scala 45:11]
  assign io_data_wb_ctrl_regwrite = reg_wb_ctrl_regwrite; // @[stage-register.scala 45:11]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_mem_ctrl_memop = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  reg_wb_ctrl_toreg = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_wb_ctrl_regwrite = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_mem_ctrl_memop <= 2'h0;
    end else if (io_flush) begin
      reg_mem_ctrl_memop <= 2'h0;
    end else begin
      reg_mem_ctrl_memop <= io_in_mem_ctrl_memop;
    end
    if (reset) begin
      reg_wb_ctrl_toreg <= 1'h0;
    end else if (io_flush) begin
      reg_wb_ctrl_toreg <= 1'h0;
    end else begin
      reg_wb_ctrl_toreg <= io_in_wb_ctrl_toreg;
    end
    if (reset) begin
      reg_wb_ctrl_regwrite <= 1'h0;
    end else if (io_flush) begin
      reg_wb_ctrl_regwrite <= 1'h0;
    end else begin
      reg_wb_ctrl_regwrite <= io_in_wb_ctrl_regwrite;
    end
  end
endmodule
module StageReg_10(
  input         clock,
  input         reset,
  input  [63:0] io_in_readdata,
  input  [63:0] io_in_ex_result,
  input  [63:0] io_in_instruction,
  output [63:0] io_data_readdata,
  output [63:0] io_data_ex_result,
  output [63:0] io_data_instruction
);
  reg [63:0] reg_readdata; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_0;
  reg [63:0] reg_ex_result; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_1;
  reg [63:0] reg_instruction; // @[stage-register.scala 43:21]
  reg [63:0] _RAND_2;
  assign io_data_readdata = reg_readdata; // @[stage-register.scala 45:11]
  assign io_data_ex_result = reg_ex_result; // @[stage-register.scala 45:11]
  assign io_data_instruction = reg_instruction; // @[stage-register.scala 45:11]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  reg_readdata = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  reg_ex_result = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  reg_instruction = _RAND_2[63:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_readdata <= 64'h0;
    end else begin
      reg_readdata <= io_in_readdata;
    end
    if (reset) begin
      reg_ex_result <= 64'h0;
    end else begin
      reg_ex_result <= io_in_ex_result;
    end
    if (reset) begin
      reg_instruction <= 64'h0;
    end else begin
      reg_instruction <= io_in_instruction;
    end
  end
endmodule
module StageReg_12(
  input   clock,
  input   reset,
  input   io_in_wb_ctrl_toreg,
  input   io_in_wb_ctrl_regwrite,
  output  io_data_wb_ctrl_toreg,
  output  io_data_wb_ctrl_regwrite
);
  reg  reg_wb_ctrl_toreg; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_0;
  reg  reg_wb_ctrl_regwrite; // @[stage-register.scala 43:21]
  reg [31:0] _RAND_1;
  assign io_data_wb_ctrl_toreg = reg_wb_ctrl_toreg; // @[stage-register.scala 45:11]
  assign io_data_wb_ctrl_regwrite = reg_wb_ctrl_regwrite; // @[stage-register.scala 45:11]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_wb_ctrl_toreg = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  reg_wb_ctrl_regwrite = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_wb_ctrl_toreg <= 1'h0;
    end else begin
      reg_wb_ctrl_toreg <= io_in_wb_ctrl_toreg;
    end
    if (reset) begin
      reg_wb_ctrl_regwrite <= 1'h0;
    end else begin
      reg_wb_ctrl_regwrite <= io_in_wb_ctrl_regwrite;
    end
  end
endmodule
module PipelinedDualIssueCPU(
  input         clk_i,
  input         reset,
  output [63:0] io_imem_address,
  output        io_imem_valid,
  input         io_imem_good,
  input  [63:0] io_imem_instruction,
  input         io_imem_ready,
  output [63:0] io_dmem_address,
  output        io_dmem_valid,
  input         io_dmem_good,
  output [63:0] io_dmem_writedata,
  output        io_dmem_memread,
  output        io_dmem_memwrite,
  output [1:0]  io_dmem_maskmode,
  output        io_dmem_sext,
  input  [63:0] io_dmem_readdata
);
  wire  issueUnit_clock; // @[dual-issue.scala 98:37]
  wire  issueUnit_reset; // @[dual-issue.scala 98:37]
  wire [63:0] issueUnit_io_pc; // @[dual-issue.scala 98:37]
  wire [63:0] issueUnit_io_inst; // @[dual-issue.scala 98:37]
  wire [63:0] issueUnit_io_nextpc; // @[dual-issue.scala 98:37]
  wire [31:0] issueUnit_io_pipeA_inst; // @[dual-issue.scala 98:37]
  wire [31:0] issueUnit_io_pipeB_inst; // @[dual-issue.scala 98:37]
  wire  issueUnit_io_pipeB_valid; // @[dual-issue.scala 98:37]
  wire  registers_clock; // @[dual-issue.scala 100:37]
  wire [4:0] registers_io_pipeA_readreg1; // @[dual-issue.scala 100:37]
  wire [4:0] registers_io_pipeA_readreg2; // @[dual-issue.scala 100:37]
  wire [4:0] registers_io_pipeA_writereg; // @[dual-issue.scala 100:37]
  wire [63:0] registers_io_pipeA_writedata; // @[dual-issue.scala 100:37]
  wire  registers_io_pipeA_wen; // @[dual-issue.scala 100:37]
  wire [4:0] registers_io_pipeB_readreg1; // @[dual-issue.scala 100:37]
  wire [4:0] registers_io_pipeB_readreg2; // @[dual-issue.scala 100:37]
  wire [4:0] registers_io_pipeB_writereg; // @[dual-issue.scala 100:37]
  wire [63:0] registers_io_pipeB_writedata; // @[dual-issue.scala 100:37]
  wire  registers_io_pipeB_wen; // @[dual-issue.scala 100:37]
  wire [63:0] registers_io_pipeA_readdata1; // @[dual-issue.scala 100:37]
  wire [63:0] registers_io_pipeA_readdata2; // @[dual-issue.scala 100:37]
  wire [63:0] registers_io_pipeB_readdata1; // @[dual-issue.scala 100:37]
  wire [63:0] registers_io_pipeB_readdata2; // @[dual-issue.scala 100:37]
  wire [6:0] pipeA_control_io_opcode; // @[dual-issue.scala 101:37]
  wire  pipeA_control_io_itype; // @[dual-issue.scala 101:37]
  wire  pipeA_control_io_aluop; // @[dual-issue.scala 101:37]
  wire  pipeA_control_io_src1; // @[dual-issue.scala 101:37]
  wire [1:0] pipeA_control_io_src2; // @[dual-issue.scala 101:37]
  wire  pipeA_control_io_branch; // @[dual-issue.scala 101:37]
  wire [1:0] pipeA_control_io_jumptype; // @[dual-issue.scala 101:37]
  wire  pipeA_control_io_resultselect; // @[dual-issue.scala 101:37]
  wire [1:0] pipeA_control_io_memop; // @[dual-issue.scala 101:37]
  wire  pipeA_control_io_toreg; // @[dual-issue.scala 101:37]
  wire  pipeA_control_io_regwrite; // @[dual-issue.scala 101:37]
  wire  pipeA_control_io_wordinst; // @[dual-issue.scala 101:37]
  wire [6:0] pipeB_control_io_opcode; // @[dual-issue.scala 102:37]
  wire  pipeB_control_io_itype; // @[dual-issue.scala 102:37]
  wire  pipeB_control_io_aluop; // @[dual-issue.scala 102:37]
  wire  pipeB_control_io_src1; // @[dual-issue.scala 102:37]
  wire [1:0] pipeB_control_io_src2; // @[dual-issue.scala 102:37]
  wire  pipeB_control_io_branch; // @[dual-issue.scala 102:37]
  wire [1:0] pipeB_control_io_jumptype; // @[dual-issue.scala 102:37]
  wire  pipeB_control_io_resultselect; // @[dual-issue.scala 102:37]
  wire [1:0] pipeB_control_io_memop; // @[dual-issue.scala 102:37]
  wire  pipeB_control_io_toreg; // @[dual-issue.scala 102:37]
  wire  pipeB_control_io_regwrite; // @[dual-issue.scala 102:37]
  wire  pipeB_control_io_wordinst; // @[dual-issue.scala 102:37]
  wire [63:0] pipeA_immGen_io_instruction; // @[dual-issue.scala 103:37]
  wire [63:0] pipeA_immGen_io_sextImm; // @[dual-issue.scala 103:37]
  wire [63:0] pipeB_immGen_io_instruction; // @[dual-issue.scala 104:37]
  wire [63:0] pipeB_immGen_io_sextImm; // @[dual-issue.scala 104:37]
  wire  pipeA_aluControl_io_aluop; // @[dual-issue.scala 106:37]
  wire  pipeA_aluControl_io_itype; // @[dual-issue.scala 106:37]
  wire [6:0] pipeA_aluControl_io_funct7; // @[dual-issue.scala 106:37]
  wire [2:0] pipeA_aluControl_io_funct3; // @[dual-issue.scala 106:37]
  wire  pipeA_aluControl_io_wordinst; // @[dual-issue.scala 106:37]
  wire [4:0] pipeA_aluControl_io_operation; // @[dual-issue.scala 106:37]
  wire  pipeB_aluControl_io_aluop; // @[dual-issue.scala 107:37]
  wire  pipeB_aluControl_io_itype; // @[dual-issue.scala 107:37]
  wire [6:0] pipeB_aluControl_io_funct7; // @[dual-issue.scala 107:37]
  wire [2:0] pipeB_aluControl_io_funct3; // @[dual-issue.scala 107:37]
  wire  pipeB_aluControl_io_wordinst; // @[dual-issue.scala 107:37]
  wire [4:0] pipeB_aluControl_io_operation; // @[dual-issue.scala 107:37]
  wire [4:0] pipeA_alu_io_operation; // @[dual-issue.scala 108:37]
  wire [63:0] pipeA_alu_io_inputx; // @[dual-issue.scala 108:37]
  wire [63:0] pipeA_alu_io_inputy; // @[dual-issue.scala 108:37]
  wire [63:0] pipeA_alu_io_result; // @[dual-issue.scala 108:37]
  wire [4:0] pipeB_alu_io_operation; // @[dual-issue.scala 109:37]
  wire [63:0] pipeB_alu_io_inputx; // @[dual-issue.scala 109:37]
  wire [63:0] pipeB_alu_io_inputy; // @[dual-issue.scala 109:37]
  wire [63:0] pipeB_alu_io_result; // @[dual-issue.scala 109:37]
  wire  nextPCmod_io_branch; // @[dual-issue.scala 111:37]
  wire [1:0] nextPCmod_io_jumptype; // @[dual-issue.scala 111:37]
  wire [63:0] nextPCmod_io_inputx; // @[dual-issue.scala 111:37]
  wire [63:0] nextPCmod_io_inputy; // @[dual-issue.scala 111:37]
  wire [2:0] nextPCmod_io_funct3; // @[dual-issue.scala 111:37]
  wire [63:0] nextPCmod_io_pc; // @[dual-issue.scala 111:37]
  wire [63:0] nextPCmod_io_imm; // @[dual-issue.scala 111:37]
  wire  nextPCmod_io_pipeB_valid; // @[dual-issue.scala 111:37]
  wire [63:0] nextPCmod_io_nextpc; // @[dual-issue.scala 111:37]
  wire  nextPCmod_io_taken; // @[dual-issue.scala 111:37]
  wire [4:0] forwarding_io_ex_pipeA_rs1; // @[dual-issue.scala 113:37]
  wire [4:0] forwarding_io_ex_pipeA_rs2; // @[dual-issue.scala 113:37]
  wire [4:0] forwarding_io_ex_pipeB_rs1; // @[dual-issue.scala 113:37]
  wire [4:0] forwarding_io_ex_pipeB_rs2; // @[dual-issue.scala 113:37]
  wire [4:0] forwarding_io_mem_pipeA_rd; // @[dual-issue.scala 113:37]
  wire  forwarding_io_mem_pipeA_rw; // @[dual-issue.scala 113:37]
  wire [4:0] forwarding_io_mem_pipeB_rd; // @[dual-issue.scala 113:37]
  wire  forwarding_io_mem_pipeB_rw; // @[dual-issue.scala 113:37]
  wire [4:0] forwarding_io_wb_pipeA_rd; // @[dual-issue.scala 113:37]
  wire  forwarding_io_wb_pipeA_rw; // @[dual-issue.scala 113:37]
  wire [4:0] forwarding_io_wb_pipeB_rd; // @[dual-issue.scala 113:37]
  wire  forwarding_io_wb_pipeB_rw; // @[dual-issue.scala 113:37]
  wire [2:0] forwarding_io_pipeA_forward1; // @[dual-issue.scala 113:37]
  wire [2:0] forwarding_io_pipeA_forward2; // @[dual-issue.scala 113:37]
  wire [2:0] forwarding_io_pipeB_forward1; // @[dual-issue.scala 113:37]
  wire [2:0] forwarding_io_pipeB_forward2; // @[dual-issue.scala 113:37]
  wire [4:0] hazard_io_id_pipeA_rs1; // @[dual-issue.scala 114:37]
  wire [4:0] hazard_io_id_pipeA_rs2; // @[dual-issue.scala 114:37]
  wire [4:0] hazard_io_id_pipeB_rs1; // @[dual-issue.scala 114:37]
  wire [4:0] hazard_io_id_pipeB_rs2; // @[dual-issue.scala 114:37]
  wire  hazard_io_pipeA_idex_memread; // @[dual-issue.scala 114:37]
  wire [4:0] hazard_io_pipeA_idex_rd; // @[dual-issue.scala 114:37]
  wire  hazard_io_pipeA_exmem_taken; // @[dual-issue.scala 114:37]
  wire  hazard_io_pipeB_idex_memread; // @[dual-issue.scala 114:37]
  wire [4:0] hazard_io_pipeB_idex_rd; // @[dual-issue.scala 114:37]
  wire  hazard_io_pipeB_exmem_taken; // @[dual-issue.scala 114:37]
  wire  hazard_io_pcfromtaken; // @[dual-issue.scala 114:37]
  wire  hazard_io_pcstall; // @[dual-issue.scala 114:37]
  wire  hazard_io_if_id_stall; // @[dual-issue.scala 114:37]
  wire  hazard_io_id_ex_flush; // @[dual-issue.scala 114:37]
  wire  hazard_io_ex_mem_flush; // @[dual-issue.scala 114:37]
  wire  hazard_io_if_id_flush; // @[dual-issue.scala 114:37]
  wire  pipeA_if_id_clock; // @[dual-issue.scala 118:33]
  wire  pipeA_if_id_reset; // @[dual-issue.scala 118:33]
  wire [31:0] pipeA_if_id_io_in_instruction; // @[dual-issue.scala 118:33]
  wire [63:0] pipeA_if_id_io_in_pc; // @[dual-issue.scala 118:33]
  wire  pipeA_if_id_io_in_isValid; // @[dual-issue.scala 118:33]
  wire  pipeA_if_id_io_flush; // @[dual-issue.scala 118:33]
  wire  pipeA_if_id_io_valid; // @[dual-issue.scala 118:33]
  wire [31:0] pipeA_if_id_io_data_instruction; // @[dual-issue.scala 118:33]
  wire [63:0] pipeA_if_id_io_data_pc; // @[dual-issue.scala 118:33]
  wire  pipeA_if_id_io_data_isValid; // @[dual-issue.scala 118:33]
  wire  pipeB_if_id_clock; // @[dual-issue.scala 119:33]
  wire  pipeB_if_id_reset; // @[dual-issue.scala 119:33]
  wire [31:0] pipeB_if_id_io_in_instruction; // @[dual-issue.scala 119:33]
  wire [63:0] pipeB_if_id_io_in_pc; // @[dual-issue.scala 119:33]
  wire  pipeB_if_id_io_in_isValid; // @[dual-issue.scala 119:33]
  wire  pipeB_if_id_io_flush; // @[dual-issue.scala 119:33]
  wire  pipeB_if_id_io_valid; // @[dual-issue.scala 119:33]
  wire [31:0] pipeB_if_id_io_data_instruction; // @[dual-issue.scala 119:33]
  wire [63:0] pipeB_if_id_io_data_pc; // @[dual-issue.scala 119:33]
  wire  pipeB_if_id_io_data_isValid; // @[dual-issue.scala 119:33]
  wire  pipeA_id_ex_clock; // @[dual-issue.scala 121:33]
  wire  pipeA_id_ex_reset; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_in_pc; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_in_instruction; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_in_sextImm; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_in_readdata1; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_in_readdata2; // @[dual-issue.scala 121:33]
  wire  pipeA_id_ex_io_in_isValid; // @[dual-issue.scala 121:33]
  wire  pipeA_id_ex_io_flush; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_data_pc; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_data_instruction; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_data_sextImm; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_data_readdata1; // @[dual-issue.scala 121:33]
  wire [63:0] pipeA_id_ex_io_data_readdata2; // @[dual-issue.scala 121:33]
  wire  pipeA_id_ex_io_data_isValid; // @[dual-issue.scala 121:33]
  wire  pipeB_id_ex_clock; // @[dual-issue.scala 122:33]
  wire  pipeB_id_ex_reset; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_in_pc; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_in_instruction; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_in_sextImm; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_in_readdata1; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_in_readdata2; // @[dual-issue.scala 122:33]
  wire  pipeB_id_ex_io_in_isValid; // @[dual-issue.scala 122:33]
  wire  pipeB_id_ex_io_flush; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_data_pc; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_data_instruction; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_data_sextImm; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_data_readdata1; // @[dual-issue.scala 122:33]
  wire [63:0] pipeB_id_ex_io_data_readdata2; // @[dual-issue.scala 122:33]
  wire  pipeB_id_ex_io_data_isValid; // @[dual-issue.scala 122:33]
  wire  pipeA_id_ex_ctrl_clock; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_reset; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_in_ex_ctrl_itype; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_in_ex_ctrl_aluop; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_in_ex_ctrl_src1; // @[dual-issue.scala 123:33]
  wire [1:0] pipeA_id_ex_ctrl_io_in_ex_ctrl_src2; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_in_ex_ctrl_branch; // @[dual-issue.scala 123:33]
  wire [1:0] pipeA_id_ex_ctrl_io_in_ex_ctrl_jumptype; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_in_ex_ctrl_resultselect; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_in_ex_ctrl_wordinst; // @[dual-issue.scala 123:33]
  wire [1:0] pipeA_id_ex_ctrl_io_in_mem_ctrl_memop; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_in_wb_ctrl_toreg; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_in_wb_ctrl_regwrite; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_flush; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_data_ex_ctrl_itype; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_data_ex_ctrl_aluop; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_data_ex_ctrl_src1; // @[dual-issue.scala 123:33]
  wire [1:0] pipeA_id_ex_ctrl_io_data_ex_ctrl_src2; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_data_ex_ctrl_branch; // @[dual-issue.scala 123:33]
  wire [1:0] pipeA_id_ex_ctrl_io_data_ex_ctrl_jumptype; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_data_ex_ctrl_resultselect; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_data_ex_ctrl_wordinst; // @[dual-issue.scala 123:33]
  wire [1:0] pipeA_id_ex_ctrl_io_data_mem_ctrl_memop; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 123:33]
  wire  pipeA_id_ex_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 123:33]
  wire  pipeB_id_ex_ctrl_clock; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_reset; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_in_ex_ctrl_itype; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_in_ex_ctrl_aluop; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_in_ex_ctrl_src1; // @[dual-issue.scala 124:33]
  wire [1:0] pipeB_id_ex_ctrl_io_in_ex_ctrl_src2; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_in_ex_ctrl_branch; // @[dual-issue.scala 124:33]
  wire [1:0] pipeB_id_ex_ctrl_io_in_ex_ctrl_jumptype; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_in_ex_ctrl_resultselect; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_in_ex_ctrl_wordinst; // @[dual-issue.scala 124:33]
  wire [1:0] pipeB_id_ex_ctrl_io_in_mem_ctrl_memop; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_in_wb_ctrl_toreg; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_in_wb_ctrl_regwrite; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_flush; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_data_ex_ctrl_itype; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_data_ex_ctrl_aluop; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_data_ex_ctrl_src1; // @[dual-issue.scala 124:33]
  wire [1:0] pipeB_id_ex_ctrl_io_data_ex_ctrl_src2; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_data_ex_ctrl_branch; // @[dual-issue.scala 124:33]
  wire [1:0] pipeB_id_ex_ctrl_io_data_ex_ctrl_jumptype; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_data_ex_ctrl_resultselect; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_data_ex_ctrl_wordinst; // @[dual-issue.scala 124:33]
  wire [1:0] pipeB_id_ex_ctrl_io_data_mem_ctrl_memop; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 124:33]
  wire  pipeB_id_ex_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 124:33]
  wire  pipeA_ex_mem_clock; // @[dual-issue.scala 126:33]
  wire  pipeA_ex_mem_reset; // @[dual-issue.scala 126:33]
  wire [63:0] pipeA_ex_mem_io_in_ex_result; // @[dual-issue.scala 126:33]
  wire [63:0] pipeA_ex_mem_io_in_mem_writedata; // @[dual-issue.scala 126:33]
  wire [63:0] pipeA_ex_mem_io_in_nextpc; // @[dual-issue.scala 126:33]
  wire  pipeA_ex_mem_io_in_taken; // @[dual-issue.scala 126:33]
  wire [63:0] pipeA_ex_mem_io_in_instruction; // @[dual-issue.scala 126:33]
  wire  pipeA_ex_mem_io_in_isValid; // @[dual-issue.scala 126:33]
  wire  pipeA_ex_mem_io_flush; // @[dual-issue.scala 126:33]
  wire [63:0] pipeA_ex_mem_io_data_ex_result; // @[dual-issue.scala 126:33]
  wire [63:0] pipeA_ex_mem_io_data_mem_writedata; // @[dual-issue.scala 126:33]
  wire [63:0] pipeA_ex_mem_io_data_nextpc; // @[dual-issue.scala 126:33]
  wire  pipeA_ex_mem_io_data_taken; // @[dual-issue.scala 126:33]
  wire [63:0] pipeA_ex_mem_io_data_instruction; // @[dual-issue.scala 126:33]
  wire  pipeA_ex_mem_io_data_isValid; // @[dual-issue.scala 126:33]
  wire  pipeB_ex_mem_clock; // @[dual-issue.scala 127:33]
  wire  pipeB_ex_mem_reset; // @[dual-issue.scala 127:33]
  wire [63:0] pipeB_ex_mem_io_in_ex_result; // @[dual-issue.scala 127:33]
  wire [63:0] pipeB_ex_mem_io_in_mem_writedata; // @[dual-issue.scala 127:33]
  wire [63:0] pipeB_ex_mem_io_in_nextpc; // @[dual-issue.scala 127:33]
  wire  pipeB_ex_mem_io_in_taken; // @[dual-issue.scala 127:33]
  wire [63:0] pipeB_ex_mem_io_in_instruction; // @[dual-issue.scala 127:33]
  wire  pipeB_ex_mem_io_in_isValid; // @[dual-issue.scala 127:33]
  wire  pipeB_ex_mem_io_flush; // @[dual-issue.scala 127:33]
  wire [63:0] pipeB_ex_mem_io_data_ex_result; // @[dual-issue.scala 127:33]
  wire [63:0] pipeB_ex_mem_io_data_mem_writedata; // @[dual-issue.scala 127:33]
  wire [63:0] pipeB_ex_mem_io_data_nextpc; // @[dual-issue.scala 127:33]
  wire  pipeB_ex_mem_io_data_taken; // @[dual-issue.scala 127:33]
  wire [63:0] pipeB_ex_mem_io_data_instruction; // @[dual-issue.scala 127:33]
  wire  pipeB_ex_mem_io_data_isValid; // @[dual-issue.scala 127:33]
  wire  pipeA_ex_mem_ctrl_clock; // @[dual-issue.scala 128:33]
  wire  pipeA_ex_mem_ctrl_reset; // @[dual-issue.scala 128:33]
  wire [1:0] pipeA_ex_mem_ctrl_io_in_mem_ctrl_memop; // @[dual-issue.scala 128:33]
  wire  pipeA_ex_mem_ctrl_io_in_wb_ctrl_toreg; // @[dual-issue.scala 128:33]
  wire  pipeA_ex_mem_ctrl_io_in_wb_ctrl_regwrite; // @[dual-issue.scala 128:33]
  wire  pipeA_ex_mem_ctrl_io_flush; // @[dual-issue.scala 128:33]
  wire [1:0] pipeA_ex_mem_ctrl_io_data_mem_ctrl_memop; // @[dual-issue.scala 128:33]
  wire  pipeA_ex_mem_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 128:33]
  wire  pipeA_ex_mem_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 128:33]
  wire  pipeB_ex_mem_ctrl_clock; // @[dual-issue.scala 129:33]
  wire  pipeB_ex_mem_ctrl_reset; // @[dual-issue.scala 129:33]
  wire [1:0] pipeB_ex_mem_ctrl_io_in_mem_ctrl_memop; // @[dual-issue.scala 129:33]
  wire  pipeB_ex_mem_ctrl_io_in_wb_ctrl_toreg; // @[dual-issue.scala 129:33]
  wire  pipeB_ex_mem_ctrl_io_in_wb_ctrl_regwrite; // @[dual-issue.scala 129:33]
  wire  pipeB_ex_mem_ctrl_io_flush; // @[dual-issue.scala 129:33]
  wire [1:0] pipeB_ex_mem_ctrl_io_data_mem_ctrl_memop; // @[dual-issue.scala 129:33]
  wire  pipeB_ex_mem_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 129:33]
  wire  pipeB_ex_mem_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 129:33]
  wire  pipeA_mem_wb_clock; // @[dual-issue.scala 131:33]
  wire  pipeA_mem_wb_reset; // @[dual-issue.scala 131:33]
  wire [63:0] pipeA_mem_wb_io_in_readdata; // @[dual-issue.scala 131:33]
  wire [63:0] pipeA_mem_wb_io_in_ex_result; // @[dual-issue.scala 131:33]
  wire [63:0] pipeA_mem_wb_io_in_instruction; // @[dual-issue.scala 131:33]
  wire [63:0] pipeA_mem_wb_io_data_readdata; // @[dual-issue.scala 131:33]
  wire [63:0] pipeA_mem_wb_io_data_ex_result; // @[dual-issue.scala 131:33]
  wire [63:0] pipeA_mem_wb_io_data_instruction; // @[dual-issue.scala 131:33]
  wire  pipeB_mem_wb_clock; // @[dual-issue.scala 132:33]
  wire  pipeB_mem_wb_reset; // @[dual-issue.scala 132:33]
  wire [63:0] pipeB_mem_wb_io_in_readdata; // @[dual-issue.scala 132:33]
  wire [63:0] pipeB_mem_wb_io_in_ex_result; // @[dual-issue.scala 132:33]
  wire [63:0] pipeB_mem_wb_io_in_instruction; // @[dual-issue.scala 132:33]
  wire [63:0] pipeB_mem_wb_io_data_readdata; // @[dual-issue.scala 132:33]
  wire [63:0] pipeB_mem_wb_io_data_ex_result; // @[dual-issue.scala 132:33]
  wire [63:0] pipeB_mem_wb_io_data_instruction; // @[dual-issue.scala 132:33]
  wire  pipeA_mem_wb_ctrl_clock; // @[dual-issue.scala 135:33]
  wire  pipeA_mem_wb_ctrl_reset; // @[dual-issue.scala 135:33]
  wire  pipeA_mem_wb_ctrl_io_in_wb_ctrl_toreg; // @[dual-issue.scala 135:33]
  wire  pipeA_mem_wb_ctrl_io_in_wb_ctrl_regwrite; // @[dual-issue.scala 135:33]
  wire  pipeA_mem_wb_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 135:33]
  wire  pipeA_mem_wb_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 135:33]
  wire  pipeB_mem_wb_ctrl_clock; // @[dual-issue.scala 136:33]
  wire  pipeB_mem_wb_ctrl_reset; // @[dual-issue.scala 136:33]
  wire  pipeB_mem_wb_ctrl_io_in_wb_ctrl_toreg; // @[dual-issue.scala 136:33]
  wire  pipeB_mem_wb_ctrl_io_in_wb_ctrl_regwrite; // @[dual-issue.scala 136:33]
  wire  pipeB_mem_wb_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 136:33]
  wire  pipeB_mem_wb_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 136:33]
  reg [63:0] pc; // @[dual-issue.scala 97:38]
  reg [63:0] _RAND_0;
  wire  _T_87 = ~pipeB_ex_mem_io_data_isValid; // @[dual-issue.scala 475:9]
  wire [2:0] pipeA_ex_funct3 = pipeA_id_ex_io_data_instruction[14:12]; // @[dual-issue.scala 278:56]
  wire [2:0] pipeB_ex_funct3 = pipeB_id_ex_io_data_instruction[14:12]; // @[dual-issue.scala 284:56]
  wire  _T_17 = ~pipeB_id_ex_io_data_isValid; // @[dual-issue.scala 329:9]
  wire  _T_18 = forwarding_io_pipeA_forward1 == 3'h0; // @[dual-issue.scala 340:81]
  wire  _T_19 = forwarding_io_pipeA_forward1 == 3'h1; // @[dual-issue.scala 341:81]
  wire  _T_20 = forwarding_io_pipeA_forward1 == 3'h2; // @[dual-issue.scala 342:81]
  wire  _T_21 = forwarding_io_pipeA_forward1 == 3'h3; // @[dual-issue.scala 343:81]
  wire  _T_22 = forwarding_io_pipeA_forward1 == 3'h4; // @[dual-issue.scala 344:81]
  wire [63:0] pipeB_wb_writedata = pipeB_mem_wb_ctrl_io_data_wb_ctrl_toreg ? pipeB_mem_wb_io_data_readdata : pipeB_mem_wb_io_data_ex_result; // @[dual-issue.scala 533:38]
  wire [63:0] _T_23 = _T_22 ? pipeB_wb_writedata : 64'h0; // @[Mux.scala 87:16]
  wire [63:0] pipeA_wb_writedata = pipeA_mem_wb_ctrl_io_data_wb_ctrl_toreg ? pipeA_mem_wb_io_data_readdata : pipeA_mem_wb_io_data_ex_result; // @[dual-issue.scala 532:38]
  wire [63:0] _T_24 = _T_21 ? pipeA_wb_writedata : _T_23; // @[Mux.scala 87:16]
  wire [63:0] _T_25 = _T_20 ? pipeB_ex_mem_io_data_ex_result : _T_24; // @[Mux.scala 87:16]
  wire [63:0] _T_26 = _T_19 ? pipeA_ex_mem_io_data_ex_result : _T_25; // @[Mux.scala 87:16]
  wire [63:0] pipeA_forwarded_inputx = _T_18 ? pipeA_id_ex_io_data_readdata1 : _T_26; // @[Mux.scala 87:16]
  wire  _T_27 = forwarding_io_pipeA_forward2 == 3'h0; // @[dual-issue.scala 345:81]
  wire  _T_28 = forwarding_io_pipeA_forward2 == 3'h1; // @[dual-issue.scala 346:81]
  wire  _T_29 = forwarding_io_pipeA_forward2 == 3'h2; // @[dual-issue.scala 347:81]
  wire  _T_30 = forwarding_io_pipeA_forward2 == 3'h3; // @[dual-issue.scala 348:81]
  wire  _T_31 = forwarding_io_pipeA_forward2 == 3'h4; // @[dual-issue.scala 349:81]
  wire [63:0] _T_32 = _T_31 ? pipeB_wb_writedata : 64'h0; // @[Mux.scala 87:16]
  wire [63:0] _T_33 = _T_30 ? pipeA_wb_writedata : _T_32; // @[Mux.scala 87:16]
  wire [63:0] _T_34 = _T_29 ? pipeB_ex_mem_io_data_ex_result : _T_33; // @[Mux.scala 87:16]
  wire [63:0] _T_35 = _T_28 ? pipeA_ex_mem_io_data_ex_result : _T_34; // @[Mux.scala 87:16]
  wire [63:0] pipeA_forwarded_inputy = _T_27 ? pipeA_id_ex_io_data_readdata2 : _T_35; // @[Mux.scala 87:16]
  wire  _T_36 = forwarding_io_pipeB_forward1 == 3'h0; // @[dual-issue.scala 350:81]
  wire  _T_37 = forwarding_io_pipeB_forward1 == 3'h1; // @[dual-issue.scala 351:81]
  wire  _T_38 = forwarding_io_pipeB_forward1 == 3'h2; // @[dual-issue.scala 352:81]
  wire  _T_39 = forwarding_io_pipeB_forward1 == 3'h3; // @[dual-issue.scala 353:81]
  wire  _T_40 = forwarding_io_pipeB_forward1 == 3'h4; // @[dual-issue.scala 354:81]
  wire  _T_41 = forwarding_io_pipeB_forward1 == 3'h5; // @[dual-issue.scala 355:81]
  wire [63:0] _T_42 = _T_41 ? pipeB_wb_writedata : 64'h0; // @[Mux.scala 87:16]
  wire [63:0] _T_43 = _T_40 ? pipeA_wb_writedata : _T_42; // @[Mux.scala 87:16]
  wire [63:0] _T_44 = _T_39 ? pipeB_ex_mem_io_data_ex_result : _T_43; // @[Mux.scala 87:16]
  wire [63:0] _T_45 = _T_38 ? pipeA_ex_mem_io_data_ex_result : _T_44; // @[Mux.scala 87:16]
  wire [63:0] _T_46 = _T_37 ? 64'h0 : _T_45; // @[Mux.scala 87:16]
  wire [63:0] pipeB_forwarded_inputx = _T_36 ? pipeB_id_ex_io_data_readdata1 : _T_46; // @[Mux.scala 87:16]
  wire  _T_47 = forwarding_io_pipeB_forward2 == 3'h0; // @[dual-issue.scala 357:81]
  wire  _T_48 = forwarding_io_pipeB_forward2 == 3'h1; // @[dual-issue.scala 358:81]
  wire  _T_49 = forwarding_io_pipeB_forward2 == 3'h2; // @[dual-issue.scala 359:81]
  wire  _T_50 = forwarding_io_pipeB_forward2 == 3'h3; // @[dual-issue.scala 360:81]
  wire  _T_51 = forwarding_io_pipeB_forward2 == 3'h4; // @[dual-issue.scala 361:81]
  wire  _T_52 = forwarding_io_pipeB_forward2 == 3'h5; // @[dual-issue.scala 362:81]
  wire [63:0] _T_53 = _T_52 ? pipeB_wb_writedata : 64'h0; // @[Mux.scala 87:16]
  wire [63:0] _T_54 = _T_51 ? pipeA_wb_writedata : _T_53; // @[Mux.scala 87:16]
  wire [63:0] _T_55 = _T_50 ? pipeB_ex_mem_io_data_ex_result : _T_54; // @[Mux.scala 87:16]
  wire [63:0] _T_56 = _T_49 ? pipeA_ex_mem_io_data_ex_result : _T_55; // @[Mux.scala 87:16]
  wire [63:0] _T_57 = _T_48 ? 64'h0 : _T_56; // @[Mux.scala 87:16]
  wire [63:0] pipeB_forwarded_inputy = _T_47 ? pipeB_id_ex_io_data_readdata2 : _T_57; // @[Mux.scala 87:16]
  wire  _T_58 = pipeA_id_ex_ctrl_io_data_ex_ctrl_src2 == 2'h0; // @[dual-issue.scala 368:83]
  wire  _T_59 = pipeA_id_ex_ctrl_io_data_ex_ctrl_src2 == 2'h1; // @[dual-issue.scala 369:83]
  wire  _T_60 = pipeA_id_ex_ctrl_io_data_ex_ctrl_src2 == 2'h2; // @[dual-issue.scala 370:83]
  wire [2:0] _T_61 = _T_60 ? 3'h4 : 3'h0; // @[Mux.scala 87:16]
  wire [63:0] _T_62 = _T_59 ? pipeA_id_ex_io_data_sextImm : {{61'd0}, _T_61}; // @[Mux.scala 87:16]
  wire  _T_63 = pipeB_id_ex_ctrl_io_data_ex_ctrl_src2 == 2'h0; // @[dual-issue.scala 371:83]
  wire  _T_64 = pipeB_id_ex_ctrl_io_data_ex_ctrl_src2 == 2'h1; // @[dual-issue.scala 372:83]
  wire  _T_65 = pipeB_id_ex_ctrl_io_data_ex_ctrl_src2 == 2'h2; // @[dual-issue.scala 373:83]
  wire [2:0] _T_66 = _T_65 ? 3'h4 : 3'h0; // @[Mux.scala 87:16]
  wire [63:0] _T_67 = _T_64 ? pipeB_id_ex_io_data_sextImm : {{61'd0}, _T_66}; // @[Mux.scala 87:16]
  wire [2:0] pipeA_mem_funct3 = pipeA_ex_mem_io_data_instruction[14:12]; // @[dual-issue.scala 450:58]
  wire [2:0] pipeB_mem_funct3 = pipeB_ex_mem_io_data_instruction[14:12]; // @[dual-issue.scala 451:58]
  wire  _T_74 = ~pipeA_ex_mem_ctrl_io_data_mem_ctrl_memop[0]; // @[dual-issue.scala 458:26]
  wire  _T_79 = ~pipeA_mem_funct3[2]; // @[dual-issue.scala 462:26]
  wire  _T_81 = ~pipeB_ex_mem_ctrl_io_data_mem_ctrl_memop[0]; // @[dual-issue.scala 466:26]
  wire  _T_86 = ~pipeB_mem_funct3[2]; // @[dual-issue.scala 470:26]
  wire  _T_88 = pipeA_mem_wb_io_data_instruction[11:7] != 5'h0; // @[dual-issue.scala 528:42]
  wire  _T_89 = pipeA_mem_wb_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 528:98]
  wire  _T_91 = pipeB_mem_wb_io_data_instruction[11:7] != 5'h0; // @[dual-issue.scala 529:42]
  wire  _T_92 = pipeB_mem_wb_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 529:98]
  IssueUnit issueUnit ( // @[dual-issue.scala 98:37]
    .clock(issueUnit_clock),
    .reset(issueUnit_reset),
    .io_pc(issueUnit_io_pc),
    .io_inst(issueUnit_io_inst),
    .io_nextpc(issueUnit_io_nextpc),
    .io_pipeA_inst(issueUnit_io_pipeA_inst),
    .io_pipeB_inst(issueUnit_io_pipeB_inst),
    .io_pipeB_valid(issueUnit_io_pipeB_valid)
  );
  DualIssueRegisterFile registers ( // @[dual-issue.scala 100:37]
    .clock(registers_clock),
    .io_pipeA_readreg1(registers_io_pipeA_readreg1),
    .io_pipeA_readreg2(registers_io_pipeA_readreg2),
    .io_pipeA_writereg(registers_io_pipeA_writereg),
    .io_pipeA_writedata(registers_io_pipeA_writedata),
    .io_pipeA_wen(registers_io_pipeA_wen),
    .io_pipeB_readreg1(registers_io_pipeB_readreg1),
    .io_pipeB_readreg2(registers_io_pipeB_readreg2),
    .io_pipeB_writereg(registers_io_pipeB_writereg),
    .io_pipeB_writedata(registers_io_pipeB_writedata),
    .io_pipeB_wen(registers_io_pipeB_wen),
    .io_pipeA_readdata1(registers_io_pipeA_readdata1),
    .io_pipeA_readdata2(registers_io_pipeA_readdata2),
    .io_pipeB_readdata1(registers_io_pipeB_readdata1),
    .io_pipeB_readdata2(registers_io_pipeB_readdata2)
  );
  Control pipeA_control ( // @[dual-issue.scala 101:37]
    .io_opcode(pipeA_control_io_opcode),
    .io_itype(pipeA_control_io_itype),
    .io_aluop(pipeA_control_io_aluop),
    .io_src1(pipeA_control_io_src1),
    .io_src2(pipeA_control_io_src2),
    .io_branch(pipeA_control_io_branch),
    .io_jumptype(pipeA_control_io_jumptype),
    .io_resultselect(pipeA_control_io_resultselect),
    .io_memop(pipeA_control_io_memop),
    .io_toreg(pipeA_control_io_toreg),
    .io_regwrite(pipeA_control_io_regwrite),
    .io_wordinst(pipeA_control_io_wordinst)
  );
  Control pipeB_control ( // @[dual-issue.scala 102:37]
    .io_opcode(pipeB_control_io_opcode),
    .io_itype(pipeB_control_io_itype),
    .io_aluop(pipeB_control_io_aluop),
    .io_src1(pipeB_control_io_src1),
    .io_src2(pipeB_control_io_src2),
    .io_branch(pipeB_control_io_branch),
    .io_jumptype(pipeB_control_io_jumptype),
    .io_resultselect(pipeB_control_io_resultselect),
    .io_memop(pipeB_control_io_memop),
    .io_toreg(pipeB_control_io_toreg),
    .io_regwrite(pipeB_control_io_regwrite),
    .io_wordinst(pipeB_control_io_wordinst)
  );
  ImmediateGenerator pipeA_immGen ( // @[dual-issue.scala 103:37]
    .io_instruction(pipeA_immGen_io_instruction),
    .io_sextImm(pipeA_immGen_io_sextImm)
  );
  ImmediateGenerator pipeB_immGen ( // @[dual-issue.scala 104:37]
    .io_instruction(pipeB_immGen_io_instruction),
    .io_sextImm(pipeB_immGen_io_sextImm)
  );
  ALUControl pipeA_aluControl ( // @[dual-issue.scala 106:37]
    .io_aluop(pipeA_aluControl_io_aluop),
    .io_itype(pipeA_aluControl_io_itype),
    .io_funct7(pipeA_aluControl_io_funct7),
    .io_funct3(pipeA_aluControl_io_funct3),
    .io_wordinst(pipeA_aluControl_io_wordinst),
    .io_operation(pipeA_aluControl_io_operation)
  );
  ALUControl pipeB_aluControl ( // @[dual-issue.scala 107:37]
    .io_aluop(pipeB_aluControl_io_aluop),
    .io_itype(pipeB_aluControl_io_itype),
    .io_funct7(pipeB_aluControl_io_funct7),
    .io_funct3(pipeB_aluControl_io_funct3),
    .io_wordinst(pipeB_aluControl_io_wordinst),
    .io_operation(pipeB_aluControl_io_operation)
  );
  ALU pipeA_alu ( // @[dual-issue.scala 108:37]
    .io_operation(pipeA_alu_io_operation),
    .io_inputx(pipeA_alu_io_inputx),
    .io_inputy(pipeA_alu_io_inputy),
    .io_result(pipeA_alu_io_result)
  );
  ALU pipeB_alu ( // @[dual-issue.scala 109:37]
    .io_operation(pipeB_alu_io_operation),
    .io_inputx(pipeB_alu_io_inputx),
    .io_inputy(pipeB_alu_io_inputy),
    .io_result(pipeB_alu_io_result)
  );
  NextPC nextPCmod ( // @[dual-issue.scala 111:37]
    .io_branch(nextPCmod_io_branch),
    .io_jumptype(nextPCmod_io_jumptype),
    .io_inputx(nextPCmod_io_inputx),
    .io_inputy(nextPCmod_io_inputy),
    .io_funct3(nextPCmod_io_funct3),
    .io_pc(nextPCmod_io_pc),
    .io_imm(nextPCmod_io_imm),
    .io_pipeB_valid(nextPCmod_io_pipeB_valid),
    .io_nextpc(nextPCmod_io_nextpc),
    .io_taken(nextPCmod_io_taken)
  );
  ForwardingUnit forwarding ( // @[dual-issue.scala 113:37]
    .io_ex_pipeA_rs1(forwarding_io_ex_pipeA_rs1),
    .io_ex_pipeA_rs2(forwarding_io_ex_pipeA_rs2),
    .io_ex_pipeB_rs1(forwarding_io_ex_pipeB_rs1),
    .io_ex_pipeB_rs2(forwarding_io_ex_pipeB_rs2),
    .io_mem_pipeA_rd(forwarding_io_mem_pipeA_rd),
    .io_mem_pipeA_rw(forwarding_io_mem_pipeA_rw),
    .io_mem_pipeB_rd(forwarding_io_mem_pipeB_rd),
    .io_mem_pipeB_rw(forwarding_io_mem_pipeB_rw),
    .io_wb_pipeA_rd(forwarding_io_wb_pipeA_rd),
    .io_wb_pipeA_rw(forwarding_io_wb_pipeA_rw),
    .io_wb_pipeB_rd(forwarding_io_wb_pipeB_rd),
    .io_wb_pipeB_rw(forwarding_io_wb_pipeB_rw),
    .io_pipeA_forward1(forwarding_io_pipeA_forward1),
    .io_pipeA_forward2(forwarding_io_pipeA_forward2),
    .io_pipeB_forward1(forwarding_io_pipeB_forward1),
    .io_pipeB_forward2(forwarding_io_pipeB_forward2)
  );
  HazardUnit hazard ( // @[dual-issue.scala 114:37]
    .io_id_pipeA_rs1(hazard_io_id_pipeA_rs1),
    .io_id_pipeA_rs2(hazard_io_id_pipeA_rs2),
    .io_id_pipeB_rs1(hazard_io_id_pipeB_rs1),
    .io_id_pipeB_rs2(hazard_io_id_pipeB_rs2),
    .io_pipeA_idex_memread(hazard_io_pipeA_idex_memread),
    .io_pipeA_idex_rd(hazard_io_pipeA_idex_rd),
    .io_pipeA_exmem_taken(hazard_io_pipeA_exmem_taken),
    .io_pipeB_idex_memread(hazard_io_pipeB_idex_memread),
    .io_pipeB_idex_rd(hazard_io_pipeB_idex_rd),
    .io_pipeB_exmem_taken(hazard_io_pipeB_exmem_taken),
    .io_pcfromtaken(hazard_io_pcfromtaken),
    .io_pcstall(hazard_io_pcstall),
    .io_if_id_stall(hazard_io_if_id_stall),
    .io_id_ex_flush(hazard_io_id_ex_flush),
    .io_ex_mem_flush(hazard_io_ex_mem_flush),
    .io_if_id_flush(hazard_io_if_id_flush)
  );
  StageReg pipeA_if_id ( // @[dual-issue.scala 118:33]
    .clock(pipeA_if_id_clock),
    .reset(pipeA_if_id_reset),
    .io_in_instruction(pipeA_if_id_io_in_instruction),
    .io_in_pc(pipeA_if_id_io_in_pc),
    .io_in_isValid(pipeA_if_id_io_in_isValid),
    .io_flush(pipeA_if_id_io_flush),
    .io_valid(pipeA_if_id_io_valid),
    .io_data_instruction(pipeA_if_id_io_data_instruction),
    .io_data_pc(pipeA_if_id_io_data_pc),
    .io_data_isValid(pipeA_if_id_io_data_isValid)
  );
  StageReg pipeB_if_id ( // @[dual-issue.scala 119:33]
    .clock(pipeB_if_id_clock),
    .reset(pipeB_if_id_reset),
    .io_in_instruction(pipeB_if_id_io_in_instruction),
    .io_in_pc(pipeB_if_id_io_in_pc),
    .io_in_isValid(pipeB_if_id_io_in_isValid),
    .io_flush(pipeB_if_id_io_flush),
    .io_valid(pipeB_if_id_io_valid),
    .io_data_instruction(pipeB_if_id_io_data_instruction),
    .io_data_pc(pipeB_if_id_io_data_pc),
    .io_data_isValid(pipeB_if_id_io_data_isValid)
  );
  StageReg_2 pipeA_id_ex ( // @[dual-issue.scala 121:33]
    .clock(pipeA_id_ex_clock),
    .reset(pipeA_id_ex_reset),
    .io_in_pc(pipeA_id_ex_io_in_pc),
    .io_in_instruction(pipeA_id_ex_io_in_instruction),
    .io_in_sextImm(pipeA_id_ex_io_in_sextImm),
    .io_in_readdata1(pipeA_id_ex_io_in_readdata1),
    .io_in_readdata2(pipeA_id_ex_io_in_readdata2),
    .io_in_isValid(pipeA_id_ex_io_in_isValid),
    .io_flush(pipeA_id_ex_io_flush),
    .io_data_pc(pipeA_id_ex_io_data_pc),
    .io_data_instruction(pipeA_id_ex_io_data_instruction),
    .io_data_sextImm(pipeA_id_ex_io_data_sextImm),
    .io_data_readdata1(pipeA_id_ex_io_data_readdata1),
    .io_data_readdata2(pipeA_id_ex_io_data_readdata2),
    .io_data_isValid(pipeA_id_ex_io_data_isValid)
  );
  StageReg_2 pipeB_id_ex ( // @[dual-issue.scala 122:33]
    .clock(pipeB_id_ex_clock),
    .reset(pipeB_id_ex_reset),
    .io_in_pc(pipeB_id_ex_io_in_pc),
    .io_in_instruction(pipeB_id_ex_io_in_instruction),
    .io_in_sextImm(pipeB_id_ex_io_in_sextImm),
    .io_in_readdata1(pipeB_id_ex_io_in_readdata1),
    .io_in_readdata2(pipeB_id_ex_io_in_readdata2),
    .io_in_isValid(pipeB_id_ex_io_in_isValid),
    .io_flush(pipeB_id_ex_io_flush),
    .io_data_pc(pipeB_id_ex_io_data_pc),
    .io_data_instruction(pipeB_id_ex_io_data_instruction),
    .io_data_sextImm(pipeB_id_ex_io_data_sextImm),
    .io_data_readdata1(pipeB_id_ex_io_data_readdata1),
    .io_data_readdata2(pipeB_id_ex_io_data_readdata2),
    .io_data_isValid(pipeB_id_ex_io_data_isValid)
  );
  StageReg_4 pipeA_id_ex_ctrl ( // @[dual-issue.scala 123:33]
    .clock(pipeA_id_ex_ctrl_clock),
    .reset(pipeA_id_ex_ctrl_reset),
    .io_in_ex_ctrl_itype(pipeA_id_ex_ctrl_io_in_ex_ctrl_itype),
    .io_in_ex_ctrl_aluop(pipeA_id_ex_ctrl_io_in_ex_ctrl_aluop),
    .io_in_ex_ctrl_src1(pipeA_id_ex_ctrl_io_in_ex_ctrl_src1),
    .io_in_ex_ctrl_src2(pipeA_id_ex_ctrl_io_in_ex_ctrl_src2),
    .io_in_ex_ctrl_branch(pipeA_id_ex_ctrl_io_in_ex_ctrl_branch),
    .io_in_ex_ctrl_jumptype(pipeA_id_ex_ctrl_io_in_ex_ctrl_jumptype),
    .io_in_ex_ctrl_resultselect(pipeA_id_ex_ctrl_io_in_ex_ctrl_resultselect),
    .io_in_ex_ctrl_wordinst(pipeA_id_ex_ctrl_io_in_ex_ctrl_wordinst),
    .io_in_mem_ctrl_memop(pipeA_id_ex_ctrl_io_in_mem_ctrl_memop),
    .io_in_wb_ctrl_toreg(pipeA_id_ex_ctrl_io_in_wb_ctrl_toreg),
    .io_in_wb_ctrl_regwrite(pipeA_id_ex_ctrl_io_in_wb_ctrl_regwrite),
    .io_flush(pipeA_id_ex_ctrl_io_flush),
    .io_data_ex_ctrl_itype(pipeA_id_ex_ctrl_io_data_ex_ctrl_itype),
    .io_data_ex_ctrl_aluop(pipeA_id_ex_ctrl_io_data_ex_ctrl_aluop),
    .io_data_ex_ctrl_src1(pipeA_id_ex_ctrl_io_data_ex_ctrl_src1),
    .io_data_ex_ctrl_src2(pipeA_id_ex_ctrl_io_data_ex_ctrl_src2),
    .io_data_ex_ctrl_branch(pipeA_id_ex_ctrl_io_data_ex_ctrl_branch),
    .io_data_ex_ctrl_jumptype(pipeA_id_ex_ctrl_io_data_ex_ctrl_jumptype),
    .io_data_ex_ctrl_resultselect(pipeA_id_ex_ctrl_io_data_ex_ctrl_resultselect),
    .io_data_ex_ctrl_wordinst(pipeA_id_ex_ctrl_io_data_ex_ctrl_wordinst),
    .io_data_mem_ctrl_memop(pipeA_id_ex_ctrl_io_data_mem_ctrl_memop),
    .io_data_wb_ctrl_toreg(pipeA_id_ex_ctrl_io_data_wb_ctrl_toreg),
    .io_data_wb_ctrl_regwrite(pipeA_id_ex_ctrl_io_data_wb_ctrl_regwrite)
  );
  StageReg_4 pipeB_id_ex_ctrl ( // @[dual-issue.scala 124:33]
    .clock(pipeB_id_ex_ctrl_clock),
    .reset(pipeB_id_ex_ctrl_reset),
    .io_in_ex_ctrl_itype(pipeB_id_ex_ctrl_io_in_ex_ctrl_itype),
    .io_in_ex_ctrl_aluop(pipeB_id_ex_ctrl_io_in_ex_ctrl_aluop),
    .io_in_ex_ctrl_src1(pipeB_id_ex_ctrl_io_in_ex_ctrl_src1),
    .io_in_ex_ctrl_src2(pipeB_id_ex_ctrl_io_in_ex_ctrl_src2),
    .io_in_ex_ctrl_branch(pipeB_id_ex_ctrl_io_in_ex_ctrl_branch),
    .io_in_ex_ctrl_jumptype(pipeB_id_ex_ctrl_io_in_ex_ctrl_jumptype),
    .io_in_ex_ctrl_resultselect(pipeB_id_ex_ctrl_io_in_ex_ctrl_resultselect),
    .io_in_ex_ctrl_wordinst(pipeB_id_ex_ctrl_io_in_ex_ctrl_wordinst),
    .io_in_mem_ctrl_memop(pipeB_id_ex_ctrl_io_in_mem_ctrl_memop),
    .io_in_wb_ctrl_toreg(pipeB_id_ex_ctrl_io_in_wb_ctrl_toreg),
    .io_in_wb_ctrl_regwrite(pipeB_id_ex_ctrl_io_in_wb_ctrl_regwrite),
    .io_flush(pipeB_id_ex_ctrl_io_flush),
    .io_data_ex_ctrl_itype(pipeB_id_ex_ctrl_io_data_ex_ctrl_itype),
    .io_data_ex_ctrl_aluop(pipeB_id_ex_ctrl_io_data_ex_ctrl_aluop),
    .io_data_ex_ctrl_src1(pipeB_id_ex_ctrl_io_data_ex_ctrl_src1),
    .io_data_ex_ctrl_src2(pipeB_id_ex_ctrl_io_data_ex_ctrl_src2),
    .io_data_ex_ctrl_branch(pipeB_id_ex_ctrl_io_data_ex_ctrl_branch),
    .io_data_ex_ctrl_jumptype(pipeB_id_ex_ctrl_io_data_ex_ctrl_jumptype),
    .io_data_ex_ctrl_resultselect(pipeB_id_ex_ctrl_io_data_ex_ctrl_resultselect),
    .io_data_ex_ctrl_wordinst(pipeB_id_ex_ctrl_io_data_ex_ctrl_wordinst),
    .io_data_mem_ctrl_memop(pipeB_id_ex_ctrl_io_data_mem_ctrl_memop),
    .io_data_wb_ctrl_toreg(pipeB_id_ex_ctrl_io_data_wb_ctrl_toreg),
    .io_data_wb_ctrl_regwrite(pipeB_id_ex_ctrl_io_data_wb_ctrl_regwrite)
  );
  StageReg_6 pipeA_ex_mem ( // @[dual-issue.scala 126:33]
    .clock(pipeA_ex_mem_clock),
    .reset(pipeA_ex_mem_reset),
    .io_in_ex_result(pipeA_ex_mem_io_in_ex_result),
    .io_in_mem_writedata(pipeA_ex_mem_io_in_mem_writedata),
    .io_in_nextpc(pipeA_ex_mem_io_in_nextpc),
    .io_in_taken(pipeA_ex_mem_io_in_taken),
    .io_in_instruction(pipeA_ex_mem_io_in_instruction),
    .io_in_isValid(pipeA_ex_mem_io_in_isValid),
    .io_flush(pipeA_ex_mem_io_flush),
    .io_data_ex_result(pipeA_ex_mem_io_data_ex_result),
    .io_data_mem_writedata(pipeA_ex_mem_io_data_mem_writedata),
    .io_data_nextpc(pipeA_ex_mem_io_data_nextpc),
    .io_data_taken(pipeA_ex_mem_io_data_taken),
    .io_data_instruction(pipeA_ex_mem_io_data_instruction),
    .io_data_isValid(pipeA_ex_mem_io_data_isValid)
  );
  StageReg_6 pipeB_ex_mem ( // @[dual-issue.scala 127:33]
    .clock(pipeB_ex_mem_clock),
    .reset(pipeB_ex_mem_reset),
    .io_in_ex_result(pipeB_ex_mem_io_in_ex_result),
    .io_in_mem_writedata(pipeB_ex_mem_io_in_mem_writedata),
    .io_in_nextpc(pipeB_ex_mem_io_in_nextpc),
    .io_in_taken(pipeB_ex_mem_io_in_taken),
    .io_in_instruction(pipeB_ex_mem_io_in_instruction),
    .io_in_isValid(pipeB_ex_mem_io_in_isValid),
    .io_flush(pipeB_ex_mem_io_flush),
    .io_data_ex_result(pipeB_ex_mem_io_data_ex_result),
    .io_data_mem_writedata(pipeB_ex_mem_io_data_mem_writedata),
    .io_data_nextpc(pipeB_ex_mem_io_data_nextpc),
    .io_data_taken(pipeB_ex_mem_io_data_taken),
    .io_data_instruction(pipeB_ex_mem_io_data_instruction),
    .io_data_isValid(pipeB_ex_mem_io_data_isValid)
  );
  StageReg_8 pipeA_ex_mem_ctrl ( // @[dual-issue.scala 128:33]
    .clock(pipeA_ex_mem_ctrl_clock),
    .reset(pipeA_ex_mem_ctrl_reset),
    .io_in_mem_ctrl_memop(pipeA_ex_mem_ctrl_io_in_mem_ctrl_memop),
    .io_in_wb_ctrl_toreg(pipeA_ex_mem_ctrl_io_in_wb_ctrl_toreg),
    .io_in_wb_ctrl_regwrite(pipeA_ex_mem_ctrl_io_in_wb_ctrl_regwrite),
    .io_flush(pipeA_ex_mem_ctrl_io_flush),
    .io_data_mem_ctrl_memop(pipeA_ex_mem_ctrl_io_data_mem_ctrl_memop),
    .io_data_wb_ctrl_toreg(pipeA_ex_mem_ctrl_io_data_wb_ctrl_toreg),
    .io_data_wb_ctrl_regwrite(pipeA_ex_mem_ctrl_io_data_wb_ctrl_regwrite)
  );
  StageReg_8 pipeB_ex_mem_ctrl ( // @[dual-issue.scala 129:33]
    .clock(pipeB_ex_mem_ctrl_clock),
    .reset(pipeB_ex_mem_ctrl_reset),
    .io_in_mem_ctrl_memop(pipeB_ex_mem_ctrl_io_in_mem_ctrl_memop),
    .io_in_wb_ctrl_toreg(pipeB_ex_mem_ctrl_io_in_wb_ctrl_toreg),
    .io_in_wb_ctrl_regwrite(pipeB_ex_mem_ctrl_io_in_wb_ctrl_regwrite),
    .io_flush(pipeB_ex_mem_ctrl_io_flush),
    .io_data_mem_ctrl_memop(pipeB_ex_mem_ctrl_io_data_mem_ctrl_memop),
    .io_data_wb_ctrl_toreg(pipeB_ex_mem_ctrl_io_data_wb_ctrl_toreg),
    .io_data_wb_ctrl_regwrite(pipeB_ex_mem_ctrl_io_data_wb_ctrl_regwrite)
  );
  StageReg_10 pipeA_mem_wb ( // @[dual-issue.scala 131:33]
    .clock(pipeA_mem_wb_clock),
    .reset(pipeA_mem_wb_reset),
    .io_in_readdata(pipeA_mem_wb_io_in_readdata),
    .io_in_ex_result(pipeA_mem_wb_io_in_ex_result),
    .io_in_instruction(pipeA_mem_wb_io_in_instruction),
    .io_data_readdata(pipeA_mem_wb_io_data_readdata),
    .io_data_ex_result(pipeA_mem_wb_io_data_ex_result),
    .io_data_instruction(pipeA_mem_wb_io_data_instruction)
  );
  StageReg_10 pipeB_mem_wb ( // @[dual-issue.scala 132:33]
    .clock(pipeB_mem_wb_clock),
    .reset(pipeB_mem_wb_reset),
    .io_in_readdata(pipeB_mem_wb_io_in_readdata),
    .io_in_ex_result(pipeB_mem_wb_io_in_ex_result),
    .io_in_instruction(pipeB_mem_wb_io_in_instruction),
    .io_data_readdata(pipeB_mem_wb_io_data_readdata),
    .io_data_ex_result(pipeB_mem_wb_io_data_ex_result),
    .io_data_instruction(pipeB_mem_wb_io_data_instruction)
  );
  StageReg_12 pipeA_mem_wb_ctrl ( // @[dual-issue.scala 135:33]
    .clock(pipeA_mem_wb_ctrl_clock),
    .reset(pipeA_mem_wb_ctrl_reset),
    .io_in_wb_ctrl_toreg(pipeA_mem_wb_ctrl_io_in_wb_ctrl_toreg),
    .io_in_wb_ctrl_regwrite(pipeA_mem_wb_ctrl_io_in_wb_ctrl_regwrite),
    .io_data_wb_ctrl_toreg(pipeA_mem_wb_ctrl_io_data_wb_ctrl_toreg),
    .io_data_wb_ctrl_regwrite(pipeA_mem_wb_ctrl_io_data_wb_ctrl_regwrite)
  );
  StageReg_12 pipeB_mem_wb_ctrl ( // @[dual-issue.scala 136:33]
    .clock(pipeB_mem_wb_ctrl_clock),
    .reset(pipeB_mem_wb_ctrl_reset),
    .io_in_wb_ctrl_toreg(pipeB_mem_wb_ctrl_io_in_wb_ctrl_toreg),
    .io_in_wb_ctrl_regwrite(pipeB_mem_wb_ctrl_io_in_wb_ctrl_regwrite),
    .io_data_wb_ctrl_toreg(pipeB_mem_wb_ctrl_io_data_wb_ctrl_toreg),
    .io_data_wb_ctrl_regwrite(pipeB_mem_wb_ctrl_io_data_wb_ctrl_regwrite)
  );
  assign io_imem_address = pc; // @[dual-issue.scala 161:19]
  assign io_imem_valid = 1'h1; // @[dual-issue.scala 162:19]
  assign io_dmem_address = _T_87 ? pipeA_ex_mem_io_data_ex_result : pipeB_ex_mem_io_data_ex_result; // @[dual-issue.scala 457:23 dual-issue.scala 465:23]
  assign io_dmem_valid = _T_87 ? pipeA_ex_mem_ctrl_io_data_mem_ctrl_memop[1] : pipeB_ex_mem_ctrl_io_data_mem_ctrl_memop[1]; // @[dual-issue.scala 460:23 dual-issue.scala 468:23]
  assign io_dmem_writedata = _T_87 ? pipeA_ex_mem_io_data_mem_writedata : pipeB_ex_mem_io_data_mem_writedata; // @[dual-issue.scala 463:23 dual-issue.scala 471:23]
  assign io_dmem_memread = _T_87 ? _T_74 : _T_81; // @[dual-issue.scala 458:23 dual-issue.scala 466:23]
  assign io_dmem_memwrite = _T_87 ? pipeA_ex_mem_ctrl_io_data_mem_ctrl_memop[0] : pipeB_ex_mem_ctrl_io_data_mem_ctrl_memop[0]; // @[dual-issue.scala 459:23 dual-issue.scala 467:23]
  assign io_dmem_maskmode = _T_87 ? pipeA_mem_funct3[1:0] : pipeB_mem_funct3[1:0]; // @[dual-issue.scala 461:23 dual-issue.scala 469:23]
  assign io_dmem_sext = _T_87 ? _T_79 : _T_86; // @[dual-issue.scala 462:23 dual-issue.scala 470:23]
  assign issueUnit_clock = clk_i;
  assign issueUnit_reset = reset;
  assign issueUnit_io_pc = pc; // @[dual-issue.scala 164:21]
  assign issueUnit_io_inst = io_imem_instruction; // @[dual-issue.scala 165:21]
  assign registers_clock = clk_i;
  assign registers_io_pipeA_readreg1 = pipeA_if_id_io_data_instruction[19:15]; // @[dual-issue.scala 204:31]
  assign registers_io_pipeA_readreg2 = pipeA_if_id_io_data_instruction[24:20]; // @[dual-issue.scala 205:31]
  assign registers_io_pipeA_writereg = pipeA_mem_wb_io_data_instruction[11:7]; // @[dual-issue.scala 524:31]
  assign registers_io_pipeA_writedata = pipeA_mem_wb_ctrl_io_data_wb_ctrl_toreg ? pipeA_mem_wb_io_data_readdata : pipeA_mem_wb_io_data_ex_result; // @[dual-issue.scala 534:32]
  assign registers_io_pipeA_wen = _T_88 & _T_89; // @[dual-issue.scala 528:26]
  assign registers_io_pipeB_readreg1 = pipeB_if_id_io_data_instruction[19:15]; // @[dual-issue.scala 206:31]
  assign registers_io_pipeB_readreg2 = pipeB_if_id_io_data_instruction[24:20]; // @[dual-issue.scala 207:31]
  assign registers_io_pipeB_writereg = pipeB_mem_wb_io_data_instruction[11:7]; // @[dual-issue.scala 525:31]
  assign registers_io_pipeB_writedata = pipeB_mem_wb_ctrl_io_data_wb_ctrl_toreg ? pipeB_mem_wb_io_data_readdata : pipeB_mem_wb_io_data_ex_result; // @[dual-issue.scala 535:32]
  assign registers_io_pipeB_wen = _T_91 & _T_92; // @[dual-issue.scala 529:26]
  assign pipeA_control_io_opcode = pipeA_if_id_io_data_instruction[6:0]; // @[dual-issue.scala 188:27]
  assign pipeB_control_io_opcode = pipeB_if_id_io_data_instruction[6:0]; // @[dual-issue.scala 189:27]
  assign pipeA_immGen_io_instruction = {{32'd0}, pipeA_if_id_io_data_instruction}; // @[dual-issue.scala 210:31]
  assign pipeB_immGen_io_instruction = {{32'd0}, pipeB_if_id_io_data_instruction}; // @[dual-issue.scala 211:31]
  assign pipeA_aluControl_io_aluop = pipeA_id_ex_ctrl_io_data_ex_ctrl_aluop; // @[dual-issue.scala 315:32]
  assign pipeA_aluControl_io_itype = pipeA_id_ex_ctrl_io_data_ex_ctrl_itype; // @[dual-issue.scala 314:32]
  assign pipeA_aluControl_io_funct7 = pipeA_id_ex_io_data_instruction[31:25]; // @[dual-issue.scala 318:32]
  assign pipeA_aluControl_io_funct3 = pipeA_id_ex_io_data_instruction[14:12]; // @[dual-issue.scala 317:32]
  assign pipeA_aluControl_io_wordinst = pipeA_id_ex_ctrl_io_data_ex_ctrl_wordinst; // @[dual-issue.scala 316:32]
  assign pipeB_aluControl_io_aluop = pipeB_id_ex_ctrl_io_data_ex_ctrl_aluop; // @[dual-issue.scala 321:32]
  assign pipeB_aluControl_io_itype = pipeB_id_ex_ctrl_io_data_ex_ctrl_itype; // @[dual-issue.scala 320:32]
  assign pipeB_aluControl_io_funct7 = pipeB_id_ex_io_data_instruction[31:25]; // @[dual-issue.scala 324:32]
  assign pipeB_aluControl_io_funct3 = pipeB_id_ex_io_data_instruction[14:12]; // @[dual-issue.scala 323:32]
  assign pipeB_aluControl_io_wordinst = pipeB_id_ex_ctrl_io_data_ex_ctrl_wordinst; // @[dual-issue.scala 322:32]
  assign pipeA_alu_io_operation = pipeA_aluControl_io_operation; // @[dual-issue.scala 376:27]
  assign pipeA_alu_io_inputx = pipeA_id_ex_ctrl_io_data_ex_ctrl_src1 ? pipeA_id_ex_io_data_pc : pipeA_forwarded_inputx; // @[dual-issue.scala 380:23]
  assign pipeA_alu_io_inputy = _T_58 ? pipeA_forwarded_inputy : _T_62; // @[dual-issue.scala 381:23]
  assign pipeB_alu_io_operation = pipeB_aluControl_io_operation; // @[dual-issue.scala 377:27]
  assign pipeB_alu_io_inputx = pipeB_id_ex_ctrl_io_data_ex_ctrl_src1 ? pipeB_id_ex_io_data_pc : pipeB_forwarded_inputx; // @[dual-issue.scala 382:23]
  assign pipeB_alu_io_inputy = _T_63 ? pipeB_forwarded_inputy : _T_67; // @[dual-issue.scala 383:23]
  assign nextPCmod_io_branch = _T_17 ? pipeA_id_ex_ctrl_io_data_ex_ctrl_branch : pipeB_id_ex_ctrl_io_data_ex_ctrl_branch; // @[dual-issue.scala 330:27 dual-issue.scala 333:27]
  assign nextPCmod_io_jumptype = _T_17 ? pipeA_id_ex_ctrl_io_data_ex_ctrl_jumptype : pipeB_id_ex_ctrl_io_data_ex_ctrl_jumptype; // @[dual-issue.scala 331:27 dual-issue.scala 334:27]
  assign nextPCmod_io_inputx = _T_17 ? pipeA_forwarded_inputx : pipeB_forwarded_inputx; // @[dual-issue.scala 387:25 dual-issue.scala 393:25]
  assign nextPCmod_io_inputy = _T_17 ? pipeA_forwarded_inputy : pipeB_forwarded_inputy; // @[dual-issue.scala 388:25 dual-issue.scala 394:25]
  assign nextPCmod_io_funct3 = _T_17 ? pipeA_ex_funct3 : pipeB_ex_funct3; // @[dual-issue.scala 391:25 dual-issue.scala 397:25]
  assign nextPCmod_io_pc = _T_17 ? pipeA_id_ex_io_data_pc : pipeB_id_ex_io_data_pc; // @[dual-issue.scala 389:25 dual-issue.scala 395:25]
  assign nextPCmod_io_imm = _T_17 ? pipeA_id_ex_io_data_sextImm : pipeB_id_ex_io_data_sextImm; // @[dual-issue.scala 390:25 dual-issue.scala 396:25]
  assign nextPCmod_io_pipeB_valid = pipeB_id_ex_io_data_isValid; // @[dual-issue.scala 336:28]
  assign forwarding_io_ex_pipeA_rs1 = pipeA_id_ex_io_data_instruction[19:15]; // @[dual-issue.scala 297:30]
  assign forwarding_io_ex_pipeA_rs2 = pipeA_id_ex_io_data_instruction[24:20]; // @[dual-issue.scala 298:30]
  assign forwarding_io_ex_pipeB_rs1 = pipeB_id_ex_io_data_instruction[19:15]; // @[dual-issue.scala 299:30]
  assign forwarding_io_ex_pipeB_rs2 = pipeB_id_ex_io_data_instruction[24:20]; // @[dual-issue.scala 300:30]
  assign forwarding_io_mem_pipeA_rd = pipeA_ex_mem_io_data_instruction[11:7]; // @[dual-issue.scala 303:30]
  assign forwarding_io_mem_pipeA_rw = pipeA_ex_mem_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 304:30]
  assign forwarding_io_mem_pipeB_rd = pipeB_ex_mem_io_data_instruction[11:7]; // @[dual-issue.scala 305:30]
  assign forwarding_io_mem_pipeB_rw = pipeB_ex_mem_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 306:30]
  assign forwarding_io_wb_pipeA_rd = pipeA_mem_wb_io_data_instruction[11:7]; // @[dual-issue.scala 307:30]
  assign forwarding_io_wb_pipeA_rw = pipeA_mem_wb_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 308:30]
  assign forwarding_io_wb_pipeB_rd = pipeB_mem_wb_io_data_instruction[11:7]; // @[dual-issue.scala 309:30]
  assign forwarding_io_wb_pipeB_rw = pipeB_mem_wb_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 310:30]
  assign hazard_io_id_pipeA_rs1 = pipeA_if_id_io_data_instruction[19:15]; // @[dual-issue.scala 198:26]
  assign hazard_io_id_pipeA_rs2 = pipeA_if_id_io_data_instruction[24:20]; // @[dual-issue.scala 199:26]
  assign hazard_io_id_pipeB_rs1 = pipeB_if_id_io_data_instruction[19:15]; // @[dual-issue.scala 200:26]
  assign hazard_io_id_pipeB_rs2 = pipeB_if_id_io_data_instruction[24:20]; // @[dual-issue.scala 201:26]
  assign hazard_io_pipeA_idex_memread = pipeA_id_ex_ctrl_io_data_mem_ctrl_memop == 2'h2; // @[dual-issue.scala 291:32]
  assign hazard_io_pipeA_idex_rd = pipeA_id_ex_io_data_instruction[11:7]; // @[dual-issue.scala 292:32]
  assign hazard_io_pipeA_exmem_taken = pipeA_ex_mem_io_data_taken; // @[dual-issue.scala 482:31]
  assign hazard_io_pipeB_idex_memread = pipeB_id_ex_ctrl_io_data_mem_ctrl_memop == 2'h2; // @[dual-issue.scala 293:32]
  assign hazard_io_pipeB_idex_rd = pipeB_id_ex_io_data_instruction[11:7]; // @[dual-issue.scala 294:32]
  assign hazard_io_pipeB_exmem_taken = pipeB_ex_mem_io_data_taken; // @[dual-issue.scala 483:31]
  assign pipeA_if_id_clock = clk_i;
  assign pipeA_if_id_reset = reset;
  assign pipeA_if_id_io_in_instruction = issueUnit_io_pipeA_inst; // @[dual-issue.scala 169:33]
  assign pipeA_if_id_io_in_pc = pc; // @[dual-issue.scala 170:33]
  assign pipeA_if_id_io_in_isValid = 1'h1; // @[dual-issue.scala 171:33]
  assign pipeA_if_id_io_flush = hazard_io_if_id_flush; // @[dual-issue.scala 179:24]
  assign pipeA_if_id_io_valid = ~hazard_io_if_id_stall; // @[dual-issue.scala 178:24]
  assign pipeB_if_id_clock = clk_i;
  assign pipeB_if_id_reset = reset;
  assign pipeB_if_id_io_in_instruction = issueUnit_io_pipeB_inst; // @[dual-issue.scala 173:33]
  assign pipeB_if_id_io_in_pc = pc + 64'h4; // @[dual-issue.scala 174:33]
  assign pipeB_if_id_io_in_isValid = issueUnit_io_pipeB_valid; // @[dual-issue.scala 175:33]
  assign pipeB_if_id_io_flush = hazard_io_if_id_flush; // @[dual-issue.scala 181:24]
  assign pipeB_if_id_io_valid = ~hazard_io_if_id_stall; // @[dual-issue.scala 180:24]
  assign pipeA_id_ex_clock = clk_i;
  assign pipeA_id_ex_reset = reset;
  assign pipeA_id_ex_io_in_pc = pipeA_if_id_io_data_pc; // @[dual-issue.scala 216:33]
  assign pipeA_id_ex_io_in_instruction = {{32'd0}, pipeA_if_id_io_data_instruction}; // @[dual-issue.scala 217:33]
  assign pipeA_id_ex_io_in_sextImm = pipeA_immGen_io_sextImm; // @[dual-issue.scala 218:33]
  assign pipeA_id_ex_io_in_readdata1 = registers_io_pipeA_readdata1; // @[dual-issue.scala 219:33]
  assign pipeA_id_ex_io_in_readdata2 = registers_io_pipeA_readdata2; // @[dual-issue.scala 220:33]
  assign pipeA_id_ex_io_in_isValid = pipeA_if_id_io_data_isValid; // @[dual-issue.scala 221:33]
  assign pipeA_id_ex_io_flush = hazard_io_id_ex_flush; // @[dual-issue.scala 264:24]
  assign pipeB_id_ex_clock = clk_i;
  assign pipeB_id_ex_reset = reset;
  assign pipeB_id_ex_io_in_pc = pipeB_if_id_io_data_pc; // @[dual-issue.scala 223:33]
  assign pipeB_id_ex_io_in_instruction = {{32'd0}, pipeB_if_id_io_data_instruction}; // @[dual-issue.scala 224:33]
  assign pipeB_id_ex_io_in_sextImm = pipeB_immGen_io_sextImm; // @[dual-issue.scala 225:33]
  assign pipeB_id_ex_io_in_readdata1 = registers_io_pipeB_readdata1; // @[dual-issue.scala 226:33]
  assign pipeB_id_ex_io_in_readdata2 = registers_io_pipeB_readdata2; // @[dual-issue.scala 227:33]
  assign pipeB_id_ex_io_in_isValid = pipeB_if_id_io_data_isValid; // @[dual-issue.scala 228:33]
  assign pipeB_id_ex_io_flush = hazard_io_id_ex_flush; // @[dual-issue.scala 269:24]
  assign pipeA_id_ex_ctrl_clock = clk_i;
  assign pipeA_id_ex_ctrl_reset = reset;
  assign pipeA_id_ex_ctrl_io_in_ex_ctrl_itype = pipeA_control_io_itype; // @[dual-issue.scala 232:47]
  assign pipeA_id_ex_ctrl_io_in_ex_ctrl_aluop = pipeA_control_io_aluop; // @[dual-issue.scala 233:47]
  assign pipeA_id_ex_ctrl_io_in_ex_ctrl_src1 = pipeA_control_io_src1; // @[dual-issue.scala 234:47]
  assign pipeA_id_ex_ctrl_io_in_ex_ctrl_src2 = pipeA_control_io_src2; // @[dual-issue.scala 235:47]
  assign pipeA_id_ex_ctrl_io_in_ex_ctrl_branch = pipeA_control_io_branch; // @[dual-issue.scala 236:47]
  assign pipeA_id_ex_ctrl_io_in_ex_ctrl_jumptype = pipeA_control_io_jumptype; // @[dual-issue.scala 237:47]
  assign pipeA_id_ex_ctrl_io_in_ex_ctrl_resultselect = pipeA_control_io_resultselect; // @[dual-issue.scala 238:47]
  assign pipeA_id_ex_ctrl_io_in_ex_ctrl_wordinst = pipeA_control_io_wordinst; // @[dual-issue.scala 239:47]
  assign pipeA_id_ex_ctrl_io_in_mem_ctrl_memop = pipeA_control_io_memop; // @[dual-issue.scala 251:41]
  assign pipeA_id_ex_ctrl_io_in_wb_ctrl_toreg = pipeA_control_io_toreg; // @[dual-issue.scala 255:43]
  assign pipeA_id_ex_ctrl_io_in_wb_ctrl_regwrite = pipeA_control_io_regwrite; // @[dual-issue.scala 256:43]
  assign pipeA_id_ex_ctrl_io_flush = hazard_io_id_ex_flush; // @[dual-issue.scala 266:29]
  assign pipeB_id_ex_ctrl_clock = clk_i;
  assign pipeB_id_ex_ctrl_reset = reset;
  assign pipeB_id_ex_ctrl_io_in_ex_ctrl_itype = pipeB_control_io_itype; // @[dual-issue.scala 241:47]
  assign pipeB_id_ex_ctrl_io_in_ex_ctrl_aluop = pipeB_control_io_aluop; // @[dual-issue.scala 242:47]
  assign pipeB_id_ex_ctrl_io_in_ex_ctrl_src1 = pipeB_control_io_src1; // @[dual-issue.scala 243:47]
  assign pipeB_id_ex_ctrl_io_in_ex_ctrl_src2 = pipeB_control_io_src2; // @[dual-issue.scala 244:47]
  assign pipeB_id_ex_ctrl_io_in_ex_ctrl_branch = pipeB_control_io_branch; // @[dual-issue.scala 245:47]
  assign pipeB_id_ex_ctrl_io_in_ex_ctrl_jumptype = pipeB_control_io_jumptype; // @[dual-issue.scala 246:47]
  assign pipeB_id_ex_ctrl_io_in_ex_ctrl_resultselect = pipeB_control_io_resultselect; // @[dual-issue.scala 247:47]
  assign pipeB_id_ex_ctrl_io_in_ex_ctrl_wordinst = pipeB_control_io_wordinst; // @[dual-issue.scala 248:47]
  assign pipeB_id_ex_ctrl_io_in_mem_ctrl_memop = pipeB_control_io_memop; // @[dual-issue.scala 252:41]
  assign pipeB_id_ex_ctrl_io_in_wb_ctrl_toreg = pipeB_control_io_toreg; // @[dual-issue.scala 258:43]
  assign pipeB_id_ex_ctrl_io_in_wb_ctrl_regwrite = pipeB_control_io_regwrite; // @[dual-issue.scala 259:43]
  assign pipeB_id_ex_ctrl_io_flush = hazard_io_id_ex_flush; // @[dual-issue.scala 271:29]
  assign pipeA_ex_mem_clock = clk_i;
  assign pipeA_ex_mem_reset = reset;
  assign pipeA_ex_mem_io_in_ex_result = pipeA_id_ex_ctrl_io_data_ex_ctrl_resultselect ? pipeA_id_ex_io_data_sextImm : pipeA_alu_io_result; // @[dual-issue.scala 429:32]
  assign pipeA_ex_mem_io_in_mem_writedata = _T_27 ? pipeA_id_ex_io_data_readdata2 : _T_35; // @[dual-issue.scala 401:36]
  assign pipeA_ex_mem_io_in_nextpc = _T_17 ? nextPCmod_io_nextpc : 64'h0; // @[dual-issue.scala 414:31 dual-issue.scala 419:31]
  assign pipeA_ex_mem_io_in_taken = _T_17 & nextPCmod_io_taken; // @[dual-issue.scala 415:31 dual-issue.scala 420:31]
  assign pipeA_ex_mem_io_in_instruction = pipeA_id_ex_io_data_instruction; // @[dual-issue.scala 400:36]
  assign pipeA_ex_mem_io_in_isValid = pipeA_id_ex_io_data_isValid; // @[dual-issue.scala 425:30]
  assign pipeA_ex_mem_io_flush = hazard_io_ex_mem_flush; // @[dual-issue.scala 437:25]
  assign pipeB_ex_mem_clock = clk_i;
  assign pipeB_ex_mem_reset = reset;
  assign pipeB_ex_mem_io_in_ex_result = pipeB_id_ex_ctrl_io_data_ex_ctrl_resultselect ? pipeB_id_ex_io_data_sextImm : pipeB_alu_io_result; // @[dual-issue.scala 430:32]
  assign pipeB_ex_mem_io_in_mem_writedata = _T_47 ? pipeB_id_ex_io_data_readdata2 : _T_57; // @[dual-issue.scala 403:36]
  assign pipeB_ex_mem_io_in_nextpc = _T_17 ? 64'h0 : nextPCmod_io_nextpc; // @[dual-issue.scala 416:31 dual-issue.scala 421:31]
  assign pipeB_ex_mem_io_in_taken = _T_17 ? 1'h0 : nextPCmod_io_taken; // @[dual-issue.scala 417:31 dual-issue.scala 422:31]
  assign pipeB_ex_mem_io_in_instruction = pipeB_id_ex_io_data_instruction; // @[dual-issue.scala 402:36]
  assign pipeB_ex_mem_io_in_isValid = pipeB_id_ex_io_data_isValid; // @[dual-issue.scala 426:30]
  assign pipeB_ex_mem_io_flush = hazard_io_ex_mem_flush; // @[dual-issue.scala 439:25]
  assign pipeA_ex_mem_ctrl_clock = clk_i;
  assign pipeA_ex_mem_ctrl_reset = reset;
  assign pipeA_ex_mem_ctrl_io_in_mem_ctrl_memop = pipeA_id_ex_ctrl_io_data_mem_ctrl_memop; // @[dual-issue.scala 405:44]
  assign pipeA_ex_mem_ctrl_io_in_wb_ctrl_toreg = pipeA_id_ex_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 406:44]
  assign pipeA_ex_mem_ctrl_io_in_wb_ctrl_regwrite = pipeA_id_ex_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 407:44]
  assign pipeA_ex_mem_ctrl_io_flush = hazard_io_ex_mem_flush; // @[dual-issue.scala 442:30]
  assign pipeB_ex_mem_ctrl_clock = clk_i;
  assign pipeB_ex_mem_ctrl_reset = reset;
  assign pipeB_ex_mem_ctrl_io_in_mem_ctrl_memop = pipeB_id_ex_ctrl_io_data_mem_ctrl_memop; // @[dual-issue.scala 409:44]
  assign pipeB_ex_mem_ctrl_io_in_wb_ctrl_toreg = pipeB_id_ex_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 410:44]
  assign pipeB_ex_mem_ctrl_io_in_wb_ctrl_regwrite = pipeB_id_ex_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 411:44]
  assign pipeB_ex_mem_ctrl_io_flush = hazard_io_ex_mem_flush; // @[dual-issue.scala 444:30]
  assign pipeA_mem_wb_clock = clk_i;
  assign pipeA_mem_wb_reset = reset;
  assign pipeA_mem_wb_io_in_readdata = io_dmem_readdata; // @[dual-issue.scala 489:34]
  assign pipeA_mem_wb_io_in_ex_result = pipeA_ex_mem_io_data_ex_result; // @[dual-issue.scala 490:34]
  assign pipeA_mem_wb_io_in_instruction = pipeA_ex_mem_io_data_instruction; // @[dual-issue.scala 491:34]
  assign pipeB_mem_wb_clock = clk_i;
  assign pipeB_mem_wb_reset = reset;
  assign pipeB_mem_wb_io_in_readdata = io_dmem_readdata; // @[dual-issue.scala 492:34]
  assign pipeB_mem_wb_io_in_ex_result = pipeB_ex_mem_io_data_ex_result; // @[dual-issue.scala 493:34]
  assign pipeB_mem_wb_io_in_instruction = pipeB_ex_mem_io_data_instruction; // @[dual-issue.scala 494:34]
  assign pipeA_mem_wb_ctrl_clock = clk_i;
  assign pipeA_mem_wb_ctrl_reset = reset;
  assign pipeA_mem_wb_ctrl_io_in_wb_ctrl_toreg = pipeA_ex_mem_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 496:44]
  assign pipeA_mem_wb_ctrl_io_in_wb_ctrl_regwrite = pipeA_ex_mem_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 497:44]
  assign pipeB_mem_wb_ctrl_clock = clk_i;
  assign pipeB_mem_wb_ctrl_reset = reset;
  assign pipeB_mem_wb_ctrl_io_in_wb_ctrl_toreg = pipeB_ex_mem_ctrl_io_data_wb_ctrl_toreg; // @[dual-issue.scala 498:44]
  assign pipeB_mem_wb_ctrl_io_in_wb_ctrl_regwrite = pipeB_ex_mem_ctrl_io_data_wb_ctrl_regwrite; // @[dual-issue.scala 499:44]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  pc = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clk_i) begin
    if (reset) begin
      pc <= 64'h0;
    end else if (hazard_io_pcfromtaken) begin
      if (_T_87) begin
        pc <= pipeA_ex_mem_io_data_nextpc;
      end else begin
        pc <= pipeB_ex_mem_io_data_nextpc;
      end
    end else if (!(hazard_io_pcstall)) begin
      pc <= issueUnit_io_nextpc;
    end
  end
endmodule
module DualPortedCombinMemory(
  input         clock,
  input         reset,
  input         io_imem_request_valid,
  input  [63:0] io_imem_request_bits_address,
  output [63:0] io_imem_response_bits_data,
  input         io_dmem_request_valid,
  input  [63:0] io_dmem_request_bits_address,
  input  [63:0] io_dmem_request_bits_writedata,
  input  [1:0]  io_dmem_request_bits_operation,
  output        io_dmem_response_valid,
  output [63:0] io_dmem_response_bits_data
);
  reg [31:0] memory [0:16383]; // @[base-memory-components.scala 39:19]
  reg [31:0] _RAND_0;
  wire [31:0] memory__T_12_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_12_addr; // @[base-memory-components.scala 39:19]
  wire [31:0] memory__T_14_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_14_addr; // @[base-memory-components.scala 39:19]
  wire [31:0] memory__T_28_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_28_addr; // @[base-memory-components.scala 39:19]
  wire [31:0] memory__T_30_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_30_addr; // @[base-memory-components.scala 39:19]
  wire [31:0] memory__T_35_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_35_addr; // @[base-memory-components.scala 39:19]
  wire  memory__T_35_mask; // @[base-memory-components.scala 39:19]
  wire  memory__T_35_en; // @[base-memory-components.scala 39:19]
  wire [31:0] memory__T_41_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_41_addr; // @[base-memory-components.scala 39:19]
  wire  memory__T_41_mask; // @[base-memory-components.scala 39:19]
  wire  memory__T_41_en; // @[base-memory-components.scala 39:19]
  wire  _T_6 = io_imem_request_bits_address < 64'h10000; // @[memory.scala 37:27]
  wire [63:0] _T_7 = {{3'd0}, io_imem_request_bits_address[63:3]}; // @[memory.scala 39:42]
  wire [64:0] _T_8 = {_T_7, 1'h0}; // @[memory.scala 39:50]
  wire [64:0] _T_10 = _T_8 + 65'h1; // @[memory.scala 40:60]
  wire [63:0] _T_15 = {memory__T_12_data,memory__T_14_data}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_4 = _T_6 ? _T_15 : 64'h0; // @[memory.scala 37:37]
  wire  _T_16 = io_dmem_request_bits_operation != 2'h1; // @[memory.scala 59:31]
  wire  _T_18 = _T_16 | reset; // @[memory.scala 59:12]
  wire  _T_19 = ~_T_18; // @[memory.scala 59:12]
  wire  _T_20 = io_dmem_request_bits_address < 64'h10000; // @[memory.scala 61:29]
  wire  _T_22 = _T_20 | reset; // @[memory.scala 61:12]
  wire  _T_23 = ~_T_22; // @[memory.scala 61:12]
  wire [63:0] _T_24 = {{2'd0}, io_dmem_request_bits_address[63:2]}; // @[memory.scala 64:34]
  wire [63:0] _T_26 = _T_24 + 64'h1; // @[memory.scala 65:58]
  wire [63:0] _T_31 = {memory__T_28_data,memory__T_30_data}; // @[Cat.scala 30:58]
  wire  _T_32 = io_dmem_request_bits_operation == 2'h2; // @[memory.scala 69:29]
  wire [61:0] _T_39 = io_dmem_request_bits_address[63:2] + 62'h1; // @[memory.scala 71:32]
  assign memory__T_12_addr = _T_10[13:0];
  assign memory__T_12_data = memory[memory__T_12_addr]; // @[base-memory-components.scala 39:19]
  assign memory__T_14_addr = _T_8[13:0];
  assign memory__T_14_data = memory[memory__T_14_addr]; // @[base-memory-components.scala 39:19]
  assign memory__T_28_addr = _T_26[13:0];
  assign memory__T_28_data = memory[memory__T_28_addr]; // @[base-memory-components.scala 39:19]
  assign memory__T_30_addr = _T_24[13:0];
  assign memory__T_30_data = memory[memory__T_30_addr]; // @[base-memory-components.scala 39:19]
  assign memory__T_35_data = io_dmem_request_bits_writedata[31:0];
  assign memory__T_35_addr = io_dmem_request_bits_address[15:2];
  assign memory__T_35_mask = 1'h1;
  assign memory__T_35_en = io_dmem_request_valid & _T_32;
  assign memory__T_41_data = io_dmem_request_bits_writedata[63:32];
  assign memory__T_41_addr = _T_39[13:0];
  assign memory__T_41_mask = 1'h1;
  assign memory__T_41_en = io_dmem_request_valid & _T_32;
  assign io_imem_response_bits_data = io_imem_request_valid ? _GEN_4 : 64'h0; // @[base-memory-components.scala 36:20 memory.scala 40:34]
  assign io_dmem_response_valid = io_dmem_request_valid; // @[base-memory-components.scala 37:20 memory.scala 18:27 memory.scala 66:28 memory.scala 74:28]
  assign io_dmem_response_bits_data = io_dmem_request_valid ? _T_31 : 64'h0; // @[base-memory-components.scala 37:20 memory.scala 65:32]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16384; initvar = initvar+1)
    memory[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(memory__T_35_en & memory__T_35_mask) begin
      memory[memory__T_35_addr] <= memory__T_35_data; // @[base-memory-components.scala 39:19]
    end
    if(memory__T_41_en & memory__T_41_mask) begin
      memory[memory__T_41_addr] <= memory__T_41_data; // @[base-memory-components.scala 39:19]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_dmem_request_valid & _T_19) begin
          $fwrite(32'h80000002,"Assertion failed\n    at memory.scala:59 assert (request.operation =/= Write)\n"); // @[memory.scala 59:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_dmem_request_valid & _T_19) begin
          $fatal; // @[memory.scala 59:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_dmem_request_valid & _T_23) begin
          $fwrite(32'h80000002,"Assertion failed\n    at memory.scala:61 assert (request.address < size.U)\n"); // @[memory.scala 61:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_dmem_request_valid & _T_23) begin
          $fatal; // @[memory.scala 61:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ICombinMemPort(
  input  [63:0] io_pipeline_address,
  input         io_pipeline_valid,
  output [63:0] io_pipeline_instruction,
  output        io_bus_request_valid,
  output [63:0] io_bus_request_bits_address,
  input  [63:0] io_bus_response_bits_data
);
  assign io_pipeline_instruction = io_bus_response_bits_data; // @[base-memory-components.scala 52:15 memory-combin-ports.scala 33:27]
  assign io_bus_request_valid = io_pipeline_valid; // @[memory-combin-ports.scala 23:26 memory-combin-ports.scala 25:26]
  assign io_bus_request_bits_address = io_pipeline_address; // @[memory-combin-ports.scala 22:26]
endmodule
module DCombinMemPort(
  input         clock,
  input         reset,
  input  [63:0] io_pipeline_address,
  input         io_pipeline_valid,
  input  [63:0] io_pipeline_writedata,
  input         io_pipeline_memread,
  input         io_pipeline_memwrite,
  input  [1:0]  io_pipeline_maskmode,
  input         io_pipeline_sext,
  output [63:0] io_pipeline_readdata,
  output        io_bus_request_valid,
  output [63:0] io_bus_request_bits_address,
  output [63:0] io_bus_request_bits_writedata,
  output [1:0]  io_bus_request_bits_operation,
  input         io_bus_response_valid,
  input  [63:0] io_bus_response_bits_data
);
  wire  _T_1 = io_pipeline_memread | io_pipeline_memwrite; // @[memory-combin-ports.scala 44:51]
  wire  _T_2 = io_pipeline_valid & _T_1; // @[memory-combin-ports.scala 44:27]
  wire  _T_3 = io_pipeline_memread & io_pipeline_memwrite; // @[memory-combin-ports.scala 46:34]
  wire  _T_4 = ~_T_3; // @[memory-combin-ports.scala 46:12]
  wire  _T_6 = _T_4 | reset; // @[memory-combin-ports.scala 46:11]
  wire  _T_7 = ~_T_6; // @[memory-combin-ports.scala 46:11]
  wire  _T_9 = io_pipeline_maskmode != 2'h3; // @[memory-combin-ports.scala 77:34]
  wire  _T_16 = io_pipeline_maskmode == 2'h0; // @[memory-combin-ports.scala 88:36]
  wire  _T_20 = io_pipeline_maskmode == 2'h1; // @[memory-combin-ports.scala 90:43]
  wire  _T_24 = io_pipeline_maskmode == 2'h2; // @[memory-combin-ports.scala 92:43]
  wire [63:0] _GEN_4 = _T_24 ? 64'hffffffff : 64'hffffffffffffffff; // @[memory-combin-ports.scala 92:52]
  wire [63:0] _GEN_5 = _T_20 ? 64'hffff : _GEN_4; // @[memory-combin-ports.scala 90:52]
  wire [63:0] _GEN_6 = _T_16 ? 64'hff : _GEN_5; // @[memory-combin-ports.scala 88:45]
  wire [3:0] _GEN_20 = {{2'd0}, io_pipeline_address[1:0]}; // @[memory-combin-ports.scala 98:61]
  wire [5:0] _T_29 = _GEN_20 * 4'h8; // @[memory-combin-ports.scala 98:61]
  wire [126:0] _GEN_21 = {{63'd0}, _GEN_6}; // @[memory-combin-ports.scala 98:50]
  wire [126:0] _T_30 = _GEN_21 << _T_29; // @[memory-combin-ports.scala 98:50]
  wire [126:0] _GEN_23 = {{63'd0}, io_pipeline_writedata}; // @[memory-combin-ports.scala 99:52]
  wire [126:0] _T_32 = _GEN_23 << _T_29; // @[memory-combin-ports.scala 99:52]
  wire [63:0] _T_33 = ~_T_30[63:0]; // @[memory-combin-ports.scala 102:26]
  wire [63:0] _T_34 = io_bus_response_bits_data & _T_33; // @[memory-combin-ports.scala 104:32]
  wire [63:0] _T_35 = _T_32[63:0] & _T_30[63:0]; // @[memory-combin-ports.scala 104:70]
  wire [63:0] _T_36 = _T_34 | _T_35; // @[memory-combin-ports.scala 104:49]
  wire [63:0] _T_42 = io_bus_response_bits_data >> _T_29; // @[memory-combin-ports.scala 118:53]
  wire [63:0] _T_43 = _T_42 & 64'hff; // @[memory-combin-ports.scala 118:72]
  wire [63:0] _T_47 = _T_42 & 64'hffff; // @[memory-combin-ports.scala 121:72]
  wire [63:0] _T_51 = _T_42 & 64'hffffffff; // @[memory-combin-ports.scala 124:72]
  wire [63:0] _GEN_8 = _T_24 ? _T_51 : io_bus_response_bits_data; // @[memory-combin-ports.scala 122:50]
  wire [63:0] _GEN_9 = _T_20 ? _T_47 : _GEN_8; // @[memory-combin-ports.scala 119:50]
  wire [63:0] _GEN_10 = _T_16 ? _T_43 : _GEN_9; // @[memory-combin-ports.scala 116:43]
  wire [55:0] _T_55 = _GEN_10[7] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_57 = {_T_55,_GEN_10[7:0]}; // @[Cat.scala 30:58]
  wire [47:0] _T_61 = _GEN_10[15] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_63 = {_T_61,_GEN_10[15:0]}; // @[Cat.scala 30:58]
  wire [31:0] _T_67 = _GEN_10[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_69 = {_T_67,_GEN_10[31:0]}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_11 = _T_24 ? _T_69 : _GEN_10; // @[memory-combin-ports.scala 137:52]
  wire [63:0] _GEN_12 = _T_20 ? _T_63 : _GEN_11; // @[memory-combin-ports.scala 134:52]
  wire [63:0] _GEN_13 = _T_16 ? _T_57 : _GEN_12; // @[memory-combin-ports.scala 131:45]
  wire [63:0] _GEN_14 = io_pipeline_sext ? _GEN_13 : _GEN_10; // @[memory-combin-ports.scala 130:31]
  wire [63:0] _GEN_15 = io_pipeline_memread ? _GEN_14 : 64'h0; // @[memory-combin-ports.scala 110:39]
  wire [63:0] _GEN_17 = io_pipeline_memwrite ? 64'h0 : _GEN_15; // @[memory-combin-ports.scala 72:33]
  assign io_pipeline_readdata = io_bus_response_valid ? _GEN_17 : 64'h0; // @[base-memory-components.scala 69:15 memory-combin-ports.scala 148:28]
  assign io_bus_request_valid = io_pipeline_valid & _T_1; // @[memory-combin-ports.scala 49:26 memory-combin-ports.scala 67:26]
  assign io_bus_request_bits_address = io_pipeline_address; // @[memory-combin-ports.scala 48:33]
  assign io_bus_request_bits_writedata = _T_9 ? _T_36 : io_pipeline_writedata; // @[memory-combin-ports.scala 109:37]
  assign io_bus_request_bits_operation = io_pipeline_memwrite ? 2'h2 : 2'h0; // @[memory-combin-ports.scala 60:37 memory-combin-ports.scala 63:37]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2 & _T_7) begin
          $fwrite(32'h80000002,"Assertion failed\n    at memory-combin-ports.scala:46 assert(!(io.pipeline.memread && io.pipeline.memwrite))\n"); // @[memory-combin-ports.scala 46:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_2 & _T_7) begin
          $fatal; // @[memory-combin-ports.scala 46:11]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module Top(
  input   clock,
  input   reset,
  output  io_success
);
  wire  cpu_clock; // @[top.scala 14:20]
  wire  cpu_reset; // @[top.scala 14:20]
  wire [63:0] cpu_io_imem_address; // @[top.scala 14:20]
  wire  cpu_io_imem_valid; // @[top.scala 14:20]
  wire  cpu_io_imem_good; // @[top.scala 14:20]
  wire [63:0] cpu_io_imem_instruction; // @[top.scala 14:20]
  wire  cpu_io_imem_ready; // @[top.scala 14:20]
  wire [63:0] cpu_io_dmem_address; // @[top.scala 14:20]
  wire  cpu_io_dmem_valid; // @[top.scala 14:20]
  wire  cpu_io_dmem_good; // @[top.scala 14:20]
  wire [63:0] cpu_io_dmem_writedata; // @[top.scala 14:20]
  wire  cpu_io_dmem_memread; // @[top.scala 14:20]
  wire  cpu_io_dmem_memwrite; // @[top.scala 14:20]
  wire [1:0] cpu_io_dmem_maskmode; // @[top.scala 14:20]
  wire  cpu_io_dmem_sext; // @[top.scala 14:20]
  wire [63:0] cpu_io_dmem_readdata; // @[top.scala 14:20]
  wire  mem_clock; // @[top.scala 15:20]
  wire  mem_reset; // @[top.scala 15:20]
  wire  mem_io_imem_request_valid; // @[top.scala 15:20]
  wire [63:0] mem_io_imem_request_bits_address; // @[top.scala 15:20]
  wire [63:0] mem_io_imem_response_bits_data; // @[top.scala 15:20]
  wire  mem_io_dmem_request_valid; // @[top.scala 15:20]
  wire [63:0] mem_io_dmem_request_bits_address; // @[top.scala 15:20]
  wire [63:0] mem_io_dmem_request_bits_writedata; // @[top.scala 15:20]
  wire [1:0] mem_io_dmem_request_bits_operation; // @[top.scala 15:20]
  wire  mem_io_dmem_response_valid; // @[top.scala 15:20]
  wire [63:0] mem_io_dmem_response_bits_data; // @[top.scala 15:20]
  wire [63:0] imem_io_pipeline_address; // @[top.scala 17:20]
  wire  imem_io_pipeline_valid; // @[top.scala 17:20]
  wire [63:0] imem_io_pipeline_instruction; // @[top.scala 17:20]
  wire  imem_io_bus_request_valid; // @[top.scala 17:20]
  wire [63:0] imem_io_bus_request_bits_address; // @[top.scala 17:20]
  wire [63:0] imem_io_bus_response_bits_data; // @[top.scala 17:20]
  wire  dmem_clock; // @[top.scala 18:20]
  wire  dmem_reset; // @[top.scala 18:20]
  wire [63:0] dmem_io_pipeline_address; // @[top.scala 18:20]
  wire  dmem_io_pipeline_valid; // @[top.scala 18:20]
  wire [63:0] dmem_io_pipeline_writedata; // @[top.scala 18:20]
  wire  dmem_io_pipeline_memread; // @[top.scala 18:20]
  wire  dmem_io_pipeline_memwrite; // @[top.scala 18:20]
  wire [1:0] dmem_io_pipeline_maskmode; // @[top.scala 18:20]
  wire  dmem_io_pipeline_sext; // @[top.scala 18:20]
  wire [63:0] dmem_io_pipeline_readdata; // @[top.scala 18:20]
  wire  dmem_io_bus_request_valid; // @[top.scala 18:20]
  wire [63:0] dmem_io_bus_request_bits_address; // @[top.scala 18:20]
  wire [63:0] dmem_io_bus_request_bits_writedata; // @[top.scala 18:20]
  wire [1:0] dmem_io_bus_request_bits_operation; // @[top.scala 18:20]
  wire  dmem_io_bus_response_valid; // @[top.scala 18:20]
  wire [63:0] dmem_io_bus_response_bits_data; // @[top.scala 18:20]
  PipelinedDualIssueCPU cpu ( // @[top.scala 14:20]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_imem_address(cpu_io_imem_address),
    .io_imem_valid(cpu_io_imem_valid),
    .io_imem_good(cpu_io_imem_good),
    .io_imem_instruction(cpu_io_imem_instruction),
    .io_imem_ready(cpu_io_imem_ready),
    .io_dmem_address(cpu_io_dmem_address),
    .io_dmem_valid(cpu_io_dmem_valid),
    .io_dmem_good(cpu_io_dmem_good),
    .io_dmem_writedata(cpu_io_dmem_writedata),
    .io_dmem_memread(cpu_io_dmem_memread),
    .io_dmem_memwrite(cpu_io_dmem_memwrite),
    .io_dmem_maskmode(cpu_io_dmem_maskmode),
    .io_dmem_sext(cpu_io_dmem_sext),
    .io_dmem_readdata(cpu_io_dmem_readdata)
  );
  DualPortedCombinMemory mem ( // @[top.scala 15:20]
    .clock(mem_clock),
    .reset(mem_reset),
    .io_imem_request_valid(mem_io_imem_request_valid),
    .io_imem_request_bits_address(mem_io_imem_request_bits_address),
    .io_imem_response_bits_data(mem_io_imem_response_bits_data),
    .io_dmem_request_valid(mem_io_dmem_request_valid),
    .io_dmem_request_bits_address(mem_io_dmem_request_bits_address),
    .io_dmem_request_bits_writedata(mem_io_dmem_request_bits_writedata),
    .io_dmem_request_bits_operation(mem_io_dmem_request_bits_operation),
    .io_dmem_response_valid(mem_io_dmem_response_valid),
    .io_dmem_response_bits_data(mem_io_dmem_response_bits_data)
  );
  ICombinMemPort imem ( // @[top.scala 17:20]
    .io_pipeline_address(imem_io_pipeline_address),
    .io_pipeline_valid(imem_io_pipeline_valid),
    .io_pipeline_instruction(imem_io_pipeline_instruction),
    .io_bus_request_valid(imem_io_bus_request_valid),
    .io_bus_request_bits_address(imem_io_bus_request_bits_address),
    .io_bus_response_bits_data(imem_io_bus_response_bits_data)
  );
  DCombinMemPort dmem ( // @[top.scala 18:20]
    .clock(dmem_clock),
    .reset(dmem_reset),
    .io_pipeline_address(dmem_io_pipeline_address),
    .io_pipeline_valid(dmem_io_pipeline_valid),
    .io_pipeline_writedata(dmem_io_pipeline_writedata),
    .io_pipeline_memread(dmem_io_pipeline_memread),
    .io_pipeline_memwrite(dmem_io_pipeline_memwrite),
    .io_pipeline_maskmode(dmem_io_pipeline_maskmode),
    .io_pipeline_sext(dmem_io_pipeline_sext),
    .io_pipeline_readdata(dmem_io_pipeline_readdata),
    .io_bus_request_valid(dmem_io_bus_request_valid),
    .io_bus_request_bits_address(dmem_io_bus_request_bits_address),
    .io_bus_request_bits_writedata(dmem_io_bus_request_bits_writedata),
    .io_bus_request_bits_operation(dmem_io_bus_request_bits_operation),
    .io_bus_response_valid(dmem_io_bus_response_valid),
    .io_bus_response_bits_data(dmem_io_bus_response_bits_data)
  );
  assign io_success = 1'h0;
  assign cpu_clock = clock;
  assign cpu_reset = reset;
  assign cpu_io_imem_good = 1'h1; // @[top.scala 23:15]
  assign cpu_io_imem_instruction = imem_io_pipeline_instruction; // @[top.scala 23:15]
  assign cpu_io_imem_ready = 1'h1; // @[top.scala 23:15]
  assign cpu_io_dmem_good = 1'h1; // @[top.scala 24:15]
  assign cpu_io_dmem_readdata = dmem_io_pipeline_readdata; // @[top.scala 24:15]
  assign mem_clock = clock;
  assign mem_reset = reset;
  assign mem_io_imem_request_valid = imem_io_bus_request_valid; // @[base-memory-components.scala 16:26]
  assign mem_io_imem_request_bits_address = imem_io_bus_request_bits_address; // @[base-memory-components.scala 16:26]
  assign mem_io_dmem_request_valid = dmem_io_bus_request_valid; // @[base-memory-components.scala 19:26]
  assign mem_io_dmem_request_bits_address = dmem_io_bus_request_bits_address; // @[base-memory-components.scala 19:26]
  assign mem_io_dmem_request_bits_writedata = dmem_io_bus_request_bits_writedata; // @[base-memory-components.scala 19:26]
  assign mem_io_dmem_request_bits_operation = dmem_io_bus_request_bits_operation; // @[base-memory-components.scala 19:26]
  assign imem_io_pipeline_address = cpu_io_imem_address; // @[top.scala 23:15]
  assign imem_io_pipeline_valid = cpu_io_imem_valid; // @[top.scala 23:15]
  assign imem_io_bus_response_bits_data = mem_io_imem_response_bits_data; // @[base-memory-components.scala 17:26]
  assign dmem_clock = clock;
  assign dmem_reset = reset;
  assign dmem_io_pipeline_address = cpu_io_dmem_address; // @[top.scala 24:15]
  assign dmem_io_pipeline_valid = cpu_io_dmem_valid; // @[top.scala 24:15]
  assign dmem_io_pipeline_writedata = cpu_io_dmem_writedata; // @[top.scala 24:15]
  assign dmem_io_pipeline_memread = cpu_io_dmem_memread; // @[top.scala 24:15]
  assign dmem_io_pipeline_memwrite = cpu_io_dmem_memwrite; // @[top.scala 24:15]
  assign dmem_io_pipeline_maskmode = cpu_io_dmem_maskmode; // @[top.scala 24:15]
  assign dmem_io_pipeline_sext = cpu_io_dmem_sext; // @[top.scala 24:15]
  assign dmem_io_bus_response_valid = mem_io_dmem_response_valid; // @[base-memory-components.scala 20:26]
  assign dmem_io_bus_response_bits_data = mem_io_dmem_response_bits_data; // @[base-memory-components.scala 20:26]
endmodule
