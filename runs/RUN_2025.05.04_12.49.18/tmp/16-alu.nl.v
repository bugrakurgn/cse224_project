module alu (din1,
    din2,
    dout,
    op);
 input [7:0] din1;
 input [7:0] din2;
 output [7:0] dout;
 input [2:0] op;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;

 sky130_fd_sc_hd__inv_2 _170_ (.A(net19),
    .Y(_098_));
 sky130_fd_sc_hd__or2_2 _171_ (.A(net17),
    .B(net18),
    .X(_099_));
 sky130_fd_sc_hd__nor2_4 _172_ (.A(_098_),
    .B(_099_),
    .Y(_100_));
 sky130_fd_sc_hd__clkbuf_4 _173_ (.A(net2),
    .X(_101_));
 sky130_fd_sc_hd__nand2_2 _174_ (.A(_101_),
    .B(net12),
    .Y(_102_));
 sky130_fd_sc_hd__clkbuf_4 _175_ (.A(net10),
    .X(_103_));
 sky130_fd_sc_hd__buf_4 _176_ (.A(net3),
    .X(_104_));
 sky130_fd_sc_hd__nand2_2 _177_ (.A(_103_),
    .B(_104_),
    .Y(_105_));
 sky130_fd_sc_hd__clkbuf_4 _178_ (.A(net11),
    .X(_106_));
 sky130_fd_sc_hd__clkbuf_4 _179_ (.A(net4),
    .X(_107_));
 sky130_fd_sc_hd__nand2_2 _180_ (.A(_106_),
    .B(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__a22o_1 _181_ (.A1(_104_),
    .A2(_106_),
    .B1(net4),
    .B2(_103_),
    .X(_109_));
 sky130_fd_sc_hd__o21ai_4 _182_ (.A1(_105_),
    .A2(_108_),
    .B1(_109_),
    .Y(_110_));
 sky130_fd_sc_hd__nand2_2 _183_ (.A(net2),
    .B(net11),
    .Y(_111_));
 sky130_fd_sc_hd__clkbuf_4 _184_ (.A(net9),
    .X(_112_));
 sky130_fd_sc_hd__a22oi_4 _185_ (.A1(_103_),
    .A2(net3),
    .B1(net4),
    .B2(_112_),
    .Y(_113_));
 sky130_fd_sc_hd__and4_1 _186_ (.A(net9),
    .B(net10),
    .C(net3),
    .D(net4),
    .X(_114_));
 sky130_fd_sc_hd__o21bai_4 _187_ (.A1(_111_),
    .A2(_113_),
    .B1_N(_114_),
    .Y(_115_));
 sky130_fd_sc_hd__xnor2_4 _188_ (.A(_110_),
    .B(_115_),
    .Y(_116_));
 sky130_fd_sc_hd__xnor2_4 _189_ (.A(_102_),
    .B(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__buf_2 _190_ (.A(net1),
    .X(_118_));
 sky130_fd_sc_hd__buf_4 _191_ (.A(net12),
    .X(_119_));
 sky130_fd_sc_hd__or3_1 _192_ (.A(_114_),
    .B(_111_),
    .C(_113_),
    .X(_120_));
 sky130_fd_sc_hd__o21ai_1 _193_ (.A1(_114_),
    .A2(_113_),
    .B1(_111_),
    .Y(_121_));
 sky130_fd_sc_hd__a22o_1 _194_ (.A1(net2),
    .A2(net10),
    .B1(_104_),
    .B2(_112_),
    .X(_122_));
 sky130_fd_sc_hd__and4_1 _195_ (.A(net9),
    .B(net2),
    .C(net10),
    .D(net3),
    .X(_123_));
 sky130_fd_sc_hd__a31o_1 _196_ (.A1(net1),
    .A2(_106_),
    .A3(_122_),
    .B1(_123_),
    .X(_124_));
 sky130_fd_sc_hd__a21o_1 _197_ (.A1(_120_),
    .A2(_121_),
    .B1(_124_),
    .X(_125_));
 sky130_fd_sc_hd__and3_1 _198_ (.A(_120_),
    .B(_121_),
    .C(_124_),
    .X(_126_));
 sky130_fd_sc_hd__a31o_1 _199_ (.A1(_118_),
    .A2(_119_),
    .A3(_125_),
    .B1(_126_),
    .X(_127_));
 sky130_fd_sc_hd__nand2_1 _200_ (.A(_117_),
    .B(_127_),
    .Y(_128_));
 sky130_fd_sc_hd__xor2_2 _201_ (.A(_117_),
    .B(_127_),
    .X(_129_));
 sky130_fd_sc_hd__nand2_1 _202_ (.A(_118_),
    .B(_106_),
    .Y(_130_));
 sky130_fd_sc_hd__and2b_1 _203_ (.A_N(_123_),
    .B(_122_),
    .X(_131_));
 sky130_fd_sc_hd__xnor2_2 _204_ (.A(_130_),
    .B(_131_),
    .Y(_132_));
 sky130_fd_sc_hd__and4_1 _205_ (.A(_112_),
    .B(_118_),
    .C(_101_),
    .D(_103_),
    .X(_133_));
 sky130_fd_sc_hd__and2_2 _206_ (.A(_132_),
    .B(_133_),
    .X(_134_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(_118_),
    .B(_119_),
    .Y(_135_));
 sky130_fd_sc_hd__and2b_1 _208_ (.A_N(_126_),
    .B(_125_),
    .X(_136_));
 sky130_fd_sc_hd__xnor2_2 _209_ (.A(_135_),
    .B(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__nand3_1 _210_ (.A(_129_),
    .B(_134_),
    .C(_137_),
    .Y(_138_));
 sky130_fd_sc_hd__and2b_1 _211_ (.A_N(_110_),
    .B(_115_),
    .X(_139_));
 sky130_fd_sc_hd__and3_1 _212_ (.A(_101_),
    .B(_119_),
    .C(_116_),
    .X(_140_));
 sky130_fd_sc_hd__and3_1 _213_ (.A(_106_),
    .B(_107_),
    .C(_105_),
    .X(_141_));
 sky130_fd_sc_hd__nand2_2 _214_ (.A(_104_),
    .B(_119_),
    .Y(_142_));
 sky130_fd_sc_hd__xnor2_2 _215_ (.A(_141_),
    .B(_142_),
    .Y(_143_));
 sky130_fd_sc_hd__nor3_1 _216_ (.A(_139_),
    .B(_140_),
    .C(_143_),
    .Y(_144_));
 sky130_fd_sc_hd__o21ai_1 _217_ (.A1(_139_),
    .A2(_140_),
    .B1(_143_),
    .Y(_145_));
 sky130_fd_sc_hd__or2b_1 _218_ (.A(_144_),
    .B_N(_145_),
    .X(_146_));
 sky130_fd_sc_hd__a21oi_1 _219_ (.A1(_128_),
    .A2(_138_),
    .B1(_146_),
    .Y(_147_));
 sky130_fd_sc_hd__and3_1 _220_ (.A(_128_),
    .B(_138_),
    .C(_146_),
    .X(_148_));
 sky130_fd_sc_hd__nor2_1 _221_ (.A(_147_),
    .B(_148_),
    .Y(_149_));
 sky130_fd_sc_hd__nand2_2 _222_ (.A(net17),
    .B(net18),
    .Y(_150_));
 sky130_fd_sc_hd__nor2_4 _223_ (.A(net19),
    .B(_150_),
    .Y(_151_));
 sky130_fd_sc_hd__or2_1 _224_ (.A(net19),
    .B(_099_),
    .X(_152_));
 sky130_fd_sc_hd__clkbuf_4 _225_ (.A(_152_),
    .X(_153_));
 sky130_fd_sc_hd__nor2_1 _226_ (.A(net6),
    .B(_153_),
    .Y(_154_));
 sky130_fd_sc_hd__nand2_2 _227_ (.A(net17),
    .B(_098_),
    .Y(_155_));
 sky130_fd_sc_hd__nor2_2 _228_ (.A(net18),
    .B(_155_),
    .Y(_156_));
 sky130_fd_sc_hd__or3b_1 _229_ (.A(net17),
    .B(net19),
    .C_N(net18),
    .X(_157_));
 sky130_fd_sc_hd__buf_2 _230_ (.A(_157_),
    .X(_158_));
 sky130_fd_sc_hd__a21oi_1 _231_ (.A1(net14),
    .A2(net6),
    .B1(_158_),
    .Y(_159_));
 sky130_fd_sc_hd__o22a_1 _232_ (.A1(net14),
    .A2(net6),
    .B1(_156_),
    .B2(_159_),
    .X(_160_));
 sky130_fd_sc_hd__a311o_1 _233_ (.A1(net14),
    .A2(net6),
    .A3(_151_),
    .B1(_154_),
    .C1(_160_),
    .X(_161_));
 sky130_fd_sc_hd__or2_4 _234_ (.A(net9),
    .B(net10),
    .X(_162_));
 sky130_fd_sc_hd__nand3b_4 _235_ (.A_N(net17),
    .B(net18),
    .C(net19),
    .Y(_163_));
 sky130_fd_sc_hd__o31a_2 _236_ (.A1(net11),
    .A2(net12),
    .A3(_162_),
    .B1(_163_),
    .X(_164_));
 sky130_fd_sc_hd__xnor2_2 _237_ (.A(net13),
    .B(_164_),
    .Y(_165_));
 sky130_fd_sc_hd__nand2_2 _238_ (.A(net5),
    .B(_165_),
    .Y(_166_));
 sky130_fd_sc_hd__a21oi_2 _239_ (.A1(_163_),
    .A2(_162_),
    .B1(_106_),
    .Y(_167_));
 sky130_fd_sc_hd__and3_1 _240_ (.A(net11),
    .B(_163_),
    .C(_162_),
    .X(_168_));
 sky130_fd_sc_hd__o21ai_4 _241_ (.A1(_167_),
    .A2(_168_),
    .B1(_104_),
    .Y(_169_));
 sky130_fd_sc_hd__and3_1 _242_ (.A(_112_),
    .B(_103_),
    .C(_163_),
    .X(_000_));
 sky130_fd_sc_hd__a21oi_1 _243_ (.A1(_112_),
    .A2(_163_),
    .B1(_103_),
    .Y(_001_));
 sky130_fd_sc_hd__o21a_2 _244_ (.A1(_000_),
    .A2(_001_),
    .B1(_101_),
    .X(_002_));
 sky130_fd_sc_hd__or3_4 _245_ (.A(_101_),
    .B(_000_),
    .C(_001_),
    .X(_003_));
 sky130_fd_sc_hd__or2b_1 _246_ (.A(_118_),
    .B_N(_112_),
    .X(_004_));
 sky130_fd_sc_hd__and3b_2 _247_ (.A_N(_002_),
    .B(_003_),
    .C(_004_),
    .X(_005_));
 sky130_fd_sc_hd__or3_1 _248_ (.A(_104_),
    .B(_167_),
    .C(_168_),
    .X(_006_));
 sky130_fd_sc_hd__and2_2 _249_ (.A(_169_),
    .B(_006_),
    .X(_007_));
 sky130_fd_sc_hd__o21ai_4 _250_ (.A1(_002_),
    .A2(_005_),
    .B1(_007_),
    .Y(_008_));
 sky130_fd_sc_hd__o21a_1 _251_ (.A1(_106_),
    .A2(_162_),
    .B1(net28),
    .X(_009_));
 sky130_fd_sc_hd__xnor2_2 _252_ (.A(_119_),
    .B(_009_),
    .Y(_010_));
 sky130_fd_sc_hd__nand2_2 _253_ (.A(_107_),
    .B(_010_),
    .Y(_011_));
 sky130_fd_sc_hd__nor2_1 _254_ (.A(_107_),
    .B(_010_),
    .Y(_012_));
 sky130_fd_sc_hd__or2_1 _255_ (.A(net5),
    .B(_165_),
    .X(_013_));
 sky130_fd_sc_hd__nand2_1 _256_ (.A(_166_),
    .B(_013_),
    .Y(_014_));
 sky130_fd_sc_hd__a311o_4 _257_ (.A1(_008_),
    .A2(_169_),
    .A3(_011_),
    .B1(_012_),
    .C1(_014_),
    .X(_015_));
 sky130_fd_sc_hd__a21o_1 _258_ (.A1(net13),
    .A2(net28),
    .B1(_164_),
    .X(_016_));
 sky130_fd_sc_hd__xnor2_1 _259_ (.A(net14),
    .B(_016_),
    .Y(_017_));
 sky130_fd_sc_hd__or2_1 _260_ (.A(net6),
    .B(_017_),
    .X(_018_));
 sky130_fd_sc_hd__nand2_2 _261_ (.A(net6),
    .B(_017_),
    .Y(_019_));
 sky130_fd_sc_hd__nand2_1 _262_ (.A(_018_),
    .B(_019_),
    .Y(_020_));
 sky130_fd_sc_hd__a21o_1 _263_ (.A1(_166_),
    .A2(_015_),
    .B1(_020_),
    .X(_021_));
 sky130_fd_sc_hd__nand3_1 _264_ (.A(_020_),
    .B(_166_),
    .C(_015_),
    .Y(_022_));
 sky130_fd_sc_hd__and3_2 _265_ (.A(net19),
    .B(_099_),
    .C(_150_),
    .X(_023_));
 sky130_fd_sc_hd__and3_1 _266_ (.A(_021_),
    .B(_022_),
    .C(_023_),
    .X(_024_));
 sky130_fd_sc_hd__a211o_1 _267_ (.A1(_100_),
    .A2(_149_),
    .B1(_161_),
    .C1(_024_),
    .X(net25));
 sky130_fd_sc_hd__o31a_1 _268_ (.A1(net14),
    .A2(net13),
    .A3(_164_),
    .B1(net28),
    .X(_025_));
 sky130_fd_sc_hd__xnor2_1 _269_ (.A(net15),
    .B(_025_),
    .Y(_026_));
 sky130_fd_sc_hd__and2_1 _270_ (.A(net7),
    .B(_026_),
    .X(_027_));
 sky130_fd_sc_hd__nor2_1 _271_ (.A(net7),
    .B(_026_),
    .Y(_028_));
 sky130_fd_sc_hd__or2_2 _272_ (.A(_027_),
    .B(_028_),
    .X(_029_));
 sky130_fd_sc_hd__inv_2 _273_ (.A(_018_),
    .Y(_030_));
 sky130_fd_sc_hd__a31o_1 _274_ (.A1(_019_),
    .A2(_166_),
    .A3(_015_),
    .B1(_030_),
    .X(_031_));
 sky130_fd_sc_hd__nand2_1 _275_ (.A(_029_),
    .B(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__a311oi_4 _276_ (.A1(_019_),
    .A2(_166_),
    .A3(_015_),
    .B1(_030_),
    .C1(_029_),
    .Y(_033_));
 sky130_fd_sc_hd__and2b_1 _277_ (.A_N(_033_),
    .B(_023_),
    .X(_034_));
 sky130_fd_sc_hd__a21oi_2 _278_ (.A1(_105_),
    .A2(_142_),
    .B1(_108_),
    .Y(_035_));
 sky130_fd_sc_hd__nand3_1 _279_ (.A(_119_),
    .B(_107_),
    .C(_035_),
    .Y(_036_));
 sky130_fd_sc_hd__a21o_1 _280_ (.A1(_119_),
    .A2(_107_),
    .B1(_035_),
    .X(_037_));
 sky130_fd_sc_hd__nand2_1 _281_ (.A(_036_),
    .B(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__a21o_1 _282_ (.A1(_128_),
    .A2(_145_),
    .B1(_144_),
    .X(_039_));
 sky130_fd_sc_hd__or2_1 _283_ (.A(_038_),
    .B(_039_),
    .X(_040_));
 sky130_fd_sc_hd__nand2_1 _284_ (.A(_038_),
    .B(_039_),
    .Y(_041_));
 sky130_fd_sc_hd__nor2_1 _285_ (.A(net15),
    .B(net7),
    .Y(_042_));
 sky130_fd_sc_hd__nand2_1 _286_ (.A(net15),
    .B(net7),
    .Y(_043_));
 sky130_fd_sc_hd__or3b_1 _287_ (.A(_158_),
    .B(_042_),
    .C_N(_043_),
    .X(_044_));
 sky130_fd_sc_hd__a211o_1 _288_ (.A1(net18),
    .A2(_043_),
    .B1(_042_),
    .C1(_155_),
    .X(_045_));
 sky130_fd_sc_hd__o211ai_1 _289_ (.A1(net7),
    .A2(_153_),
    .B1(_044_),
    .C1(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__a31o_1 _290_ (.A1(_100_),
    .A2(_040_),
    .A3(_041_),
    .B1(_046_),
    .X(_047_));
 sky130_fd_sc_hd__a21o_1 _291_ (.A1(_032_),
    .A2(_034_),
    .B1(_047_),
    .X(net26));
 sky130_fd_sc_hd__xnor2_2 _292_ (.A(net16),
    .B(net8),
    .Y(_048_));
 sky130_fd_sc_hd__o21a_1 _293_ (.A1(net15),
    .A2(_025_),
    .B1(net28),
    .X(_049_));
 sky130_fd_sc_hd__xor2_2 _294_ (.A(_048_),
    .B(_049_),
    .X(_050_));
 sky130_fd_sc_hd__o21ai_1 _295_ (.A1(_027_),
    .A2(_033_),
    .B1(_050_),
    .Y(_051_));
 sky130_fd_sc_hd__or3_1 _296_ (.A(_027_),
    .B(_033_),
    .C(_050_),
    .X(_052_));
 sky130_fd_sc_hd__o21ai_1 _297_ (.A1(_038_),
    .A2(_039_),
    .B1(_036_),
    .Y(_053_));
 sky130_fd_sc_hd__o21a_1 _298_ (.A1(net16),
    .A2(net8),
    .B1(_156_),
    .X(_054_));
 sky130_fd_sc_hd__a31oi_1 _299_ (.A1(net16),
    .A2(net8),
    .A3(_151_),
    .B1(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__o221a_1 _300_ (.A1(net8),
    .A2(_153_),
    .B1(_048_),
    .B2(_158_),
    .C1(_055_),
    .X(_056_));
 sky130_fd_sc_hd__a21bo_1 _301_ (.A1(_100_),
    .A2(_053_),
    .B1_N(_056_),
    .X(_057_));
 sky130_fd_sc_hd__a31o_1 _302_ (.A1(_023_),
    .A2(_051_),
    .A3(_052_),
    .B1(_057_),
    .X(net27));
 sky130_fd_sc_hd__or2_1 _303_ (.A(_100_),
    .B(_151_),
    .X(_058_));
 sky130_fd_sc_hd__o211ai_1 _304_ (.A1(_112_),
    .A2(_118_),
    .B1(_099_),
    .C1(_150_),
    .Y(_059_));
 sky130_fd_sc_hd__a31o_1 _305_ (.A1(_112_),
    .A2(_118_),
    .A3(_155_),
    .B1(_059_),
    .X(_060_));
 sky130_fd_sc_hd__o21ai_1 _306_ (.A1(_118_),
    .A2(_153_),
    .B1(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__a31o_1 _307_ (.A1(_112_),
    .A2(_118_),
    .A3(_058_),
    .B1(_061_),
    .X(net20));
 sky130_fd_sc_hd__a21oi_1 _308_ (.A1(_101_),
    .A2(_103_),
    .B1(_158_),
    .Y(_062_));
 sky130_fd_sc_hd__o22a_1 _309_ (.A1(_101_),
    .A2(_103_),
    .B1(_156_),
    .B2(_062_),
    .X(_063_));
 sky130_fd_sc_hd__a22o_1 _310_ (.A1(_112_),
    .A2(_101_),
    .B1(_103_),
    .B2(_118_),
    .X(_064_));
 sky130_fd_sc_hd__and3b_1 _311_ (.A_N(_133_),
    .B(_100_),
    .C(_064_),
    .X(_065_));
 sky130_fd_sc_hd__a31o_1 _312_ (.A1(_101_),
    .A2(_103_),
    .A3(_151_),
    .B1(_065_),
    .X(_066_));
 sky130_fd_sc_hd__nor2_1 _313_ (.A(_101_),
    .B(_153_),
    .Y(_067_));
 sky130_fd_sc_hd__and2b_1 _314_ (.A_N(_002_),
    .B(_003_),
    .X(_068_));
 sky130_fd_sc_hd__nor2_1 _315_ (.A(_068_),
    .B(_004_),
    .Y(_069_));
 sky130_fd_sc_hd__or3b_1 _316_ (.A(_005_),
    .B(_069_),
    .C_N(_023_),
    .X(_070_));
 sky130_fd_sc_hd__or4b_1 _317_ (.A(_063_),
    .B(_066_),
    .C(_067_),
    .D_N(_070_),
    .X(_071_));
 sky130_fd_sc_hd__buf_1 _318_ (.A(_071_),
    .X(net21));
 sky130_fd_sc_hd__or3_1 _319_ (.A(_007_),
    .B(_002_),
    .C(_005_),
    .X(_072_));
 sky130_fd_sc_hd__o21ai_2 _320_ (.A1(_132_),
    .A2(_133_),
    .B1(_100_),
    .Y(_073_));
 sky130_fd_sc_hd__a21oi_1 _321_ (.A1(_104_),
    .A2(_106_),
    .B1(_158_),
    .Y(_074_));
 sky130_fd_sc_hd__o22a_1 _322_ (.A1(_104_),
    .A2(_106_),
    .B1(_156_),
    .B2(_074_),
    .X(_075_));
 sky130_fd_sc_hd__nor2_1 _323_ (.A(_104_),
    .B(_153_),
    .Y(_076_));
 sky130_fd_sc_hd__a311o_1 _324_ (.A1(_104_),
    .A2(_106_),
    .A3(_151_),
    .B1(_075_),
    .C1(_076_),
    .X(_077_));
 sky130_fd_sc_hd__o21bai_2 _325_ (.A1(_134_),
    .A2(_073_),
    .B1_N(_077_),
    .Y(_078_));
 sky130_fd_sc_hd__a31o_1 _326_ (.A1(_008_),
    .A2(_023_),
    .A3(_072_),
    .B1(_078_),
    .X(net22));
 sky130_fd_sc_hd__or2b_1 _327_ (.A(_012_),
    .B_N(_011_),
    .X(_079_));
 sky130_fd_sc_hd__nand2_1 _328_ (.A(_169_),
    .B(_008_),
    .Y(_080_));
 sky130_fd_sc_hd__xnor2_1 _329_ (.A(_079_),
    .B(_080_),
    .Y(_081_));
 sky130_fd_sc_hd__xor2_1 _330_ (.A(_134_),
    .B(_137_),
    .X(_082_));
 sky130_fd_sc_hd__a21oi_1 _331_ (.A1(_119_),
    .A2(_107_),
    .B1(_158_),
    .Y(_083_));
 sky130_fd_sc_hd__o22a_1 _332_ (.A1(_119_),
    .A2(_107_),
    .B1(_156_),
    .B2(_083_),
    .X(_084_));
 sky130_fd_sc_hd__nor2_1 _333_ (.A(_107_),
    .B(_153_),
    .Y(_085_));
 sky130_fd_sc_hd__a311o_1 _334_ (.A1(_119_),
    .A2(_107_),
    .A3(_151_),
    .B1(_084_),
    .C1(_085_),
    .X(_086_));
 sky130_fd_sc_hd__a221o_1 _335_ (.A1(_023_),
    .A2(_081_),
    .B1(_082_),
    .B2(_100_),
    .C1(_086_),
    .X(net23));
 sky130_fd_sc_hd__a31o_1 _336_ (.A1(_169_),
    .A2(_008_),
    .A3(_011_),
    .B1(_012_),
    .X(_087_));
 sky130_fd_sc_hd__nand2_1 _337_ (.A(_014_),
    .B(_087_),
    .Y(_088_));
 sky130_fd_sc_hd__and3_1 _338_ (.A(_015_),
    .B(_023_),
    .C(_088_),
    .X(_089_));
 sky130_fd_sc_hd__nor2_1 _339_ (.A(net13),
    .B(net5),
    .Y(_090_));
 sky130_fd_sc_hd__and2b_1 _340_ (.A_N(_090_),
    .B(_156_),
    .X(_091_));
 sky130_fd_sc_hd__a31o_1 _341_ (.A1(net13),
    .A2(net5),
    .A3(_151_),
    .B1(_091_),
    .X(_092_));
 sky130_fd_sc_hd__a21o_1 _342_ (.A1(_134_),
    .A2(_137_),
    .B1(_129_),
    .X(_093_));
 sky130_fd_sc_hd__o22a_1 _343_ (.A1(net5),
    .A2(_153_),
    .B1(_090_),
    .B2(_158_),
    .X(_094_));
 sky130_fd_sc_hd__a21oi_1 _344_ (.A1(net13),
    .A2(net5),
    .B1(_094_),
    .Y(_095_));
 sky130_fd_sc_hd__a31o_1 _345_ (.A1(_138_),
    .A2(_100_),
    .A3(_093_),
    .B1(_095_),
    .X(_096_));
 sky130_fd_sc_hd__or3_4 _346_ (.A(_089_),
    .B(_092_),
    .C(_096_),
    .X(_097_));
 sky130_fd_sc_hd__clkbuf_1 _347_ (.A(_097_),
    .X(net24));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_145 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(din1[0]),
    .X(net1));
 sky130_fd_sc_hd__dlymetal6s2s_1 input2 (.A(din1[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_2 input3 (.A(din1[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_2 input4 (.A(din1[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 input5 (.A(din1[4]),
    .X(net5));
 sky130_fd_sc_hd__buf_2 input6 (.A(din1[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_2 input7 (.A(din1[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_2 input8 (.A(din1[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_2 input9 (.A(din2[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 input10 (.A(din2[1]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_2 input11 (.A(din2[2]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_2 input12 (.A(din2[3]),
    .X(net12));
 sky130_fd_sc_hd__buf_2 input13 (.A(din2[4]),
    .X(net13));
 sky130_fd_sc_hd__buf_2 input14 (.A(din2[5]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_2 input15 (.A(din2[6]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_2 input16 (.A(din2[7]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_2 input17 (.A(op[0]),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_4 input18 (.A(op[1]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_4 input19 (.A(op[2]),
    .X(net19));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(dout[0]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(dout[1]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(dout[2]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(dout[3]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(dout[4]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(dout[5]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(dout[6]));
 sky130_fd_sc_hd__buf_2 output27 (.A(net27),
    .X(dout[7]));
 sky130_fd_sc_hd__nand3b_2 clone1 (.A_N(net17),
    .B(net18),
    .C(net19),
    .Y(net28));
endmodule
