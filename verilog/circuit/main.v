/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( InstDone,
             Jen,
             Jin,
             Jout,
             PC,
             R1,
             R10,
             R11,
             R12,
             R13,
             R14,
             R15,
             R16,
             R17,
             R18,
             R19,
             R2,
             R20,
             R21,
             R22,
             R23,
             R24,
             R25,
             R26,
             R27,
             R28,
             R29,
             R3,
             R30,
             R31,
             R4,
             R5,
             R6,
             R7,
             R8,
             R9,
             clk,
             rst );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input        Jen;
   input [31:0] Jin;
   input        clk;
   input        rst;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output        InstDone;
   output [31:0] Jout;
   output [8:0]  PC;
   output [31:0] R1;
   output [31:0] R10;
   output [31:0] R11;
   output [31:0] R12;
   output [31:0] R13;
   output [31:0] R14;
   output [31:0] R15;
   output [31:0] R16;
   output [31:0] R17;
   output [31:0] R18;
   output [31:0] R19;
   output [31:0] R2;
   output [31:0] R20;
   output [31:0] R21;
   output [31:0] R22;
   output [31:0] R23;
   output [31:0] R24;
   output [31:0] R25;
   output [31:0] R26;
   output [31:0] R27;
   output [31:0] R28;
   output [31:0] R29;
   output [31:0] R3;
   output [31:0] R30;
   output [31:0] R31;
   output [31:0] R4;
   output [31:0] R5;
   output [31:0] R6;
   output [31:0] R7;
   output [31:0] R8;
   output [31:0] R9;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [15:0] s_logisimBus0;
   wire [31:0] s_logisimBus1;
   wire [31:0] s_logisimBus100;
   wire [31:0] s_logisimBus101;
   wire [31:0] s_logisimBus102;
   wire [31:0] s_logisimBus103;
   wire [31:0] s_logisimBus104;
   wire [31:0] s_logisimBus105;
   wire [31:0] s_logisimBus106;
   wire [31:0] s_logisimBus107;
   wire [31:0] s_logisimBus108;
   wire [31:0] s_logisimBus109;
   wire [5:0]  s_logisimBus11;
   wire [31:0] s_logisimBus110;
   wire [31:0] s_logisimBus111;
   wire [31:0] s_logisimBus112;
   wire [31:0] s_logisimBus113;
   wire [31:0] s_logisimBus114;
   wire [31:0] s_logisimBus115;
   wire [31:0] s_logisimBus116;
   wire [31:0] s_logisimBus117;
   wire [31:0] s_logisimBus118;
   wire [31:0] s_logisimBus119;
   wire [31:0] s_logisimBus120;
   wire [31:0] s_logisimBus121;
   wire [31:0] s_logisimBus122;
   wire [31:0] s_logisimBus123;
   wire [31:0] s_logisimBus124;
   wire [31:0] s_logisimBus125;
   wire [31:0] s_logisimBus126;
   wire [31:0] s_logisimBus127;
   wire [31:0] s_logisimBus128;
   wire [3:0]  s_logisimBus13;
   wire [31:0] s_logisimBus16;
   wire [31:0] s_logisimBus17;
   wire [31:0] s_logisimBus18;
   wire [31:0] s_logisimBus19;
   wire [1:0]  s_logisimBus2;
   wire [5:0]  s_logisimBus20;
   wire [31:0] s_logisimBus21;
   wire [31:0] s_logisimBus22;
   wire [31:0] s_logisimBus23;
   wire [4:0]  s_logisimBus26;
   wire [8:0]  s_logisimBus27;
   wire [4:0]  s_logisimBus28;
   wire [8:0]  s_logisimBus29;
   wire [31:0] s_logisimBus3;
   wire [5:0]  s_logisimBus31;
   wire [4:0]  s_logisimBus32;
   wire [31:0] s_logisimBus33;
   wire [4:0]  s_logisimBus35;
   wire [31:0] s_logisimBus37;
   wire [8:0]  s_logisimBus38;
   wire [4:0]  s_logisimBus39;
   wire [31:0] s_logisimBus4;
   wire [31:0] s_logisimBus40;
   wire [31:0] s_logisimBus41;
   wire [1:0]  s_logisimBus42;
   wire [8:0]  s_logisimBus43;
   wire [31:0] s_logisimBus44;
   wire [4:0]  s_logisimBus45;
   wire [31:0] s_logisimBus46;
   wire [31:0] s_logisimBus48;
   wire [8:0]  s_logisimBus49;
   wire [31:0] s_logisimBus5;
   wire [8:0]  s_logisimBus50;
   wire [8:0]  s_logisimBus51;
   wire [31:0] s_logisimBus56;
   wire [4:0]  s_logisimBus57;
   wire [31:0] s_logisimBus6;
   wire [5:0]  s_logisimBus60;
   wire [31:0] s_logisimBus62;
   wire [8:0]  s_logisimBus63;
   wire [4:0]  s_logisimBus64;
   wire [4:0]  s_logisimBus66;
   wire [31:0] s_logisimBus7;
   wire [31:0] s_logisimBus72;
   wire [31:0] s_logisimBus8;
   wire [5:0]  s_logisimBus84;
   wire [31:0] s_logisimBus87;
   wire [8:0]  s_logisimBus88;
   wire [31:0] s_logisimBus89;
   wire [31:0] s_logisimBus9;
   wire [5:0]  s_logisimBus90;
   wire [5:0]  s_logisimBus91;
   wire [5:0]  s_logisimBus92;
   wire [1:0]  s_logisimBus94;
   wire [4:0]  s_logisimBus96;
   wire [31:0] s_logisimBus97;
   wire [31:0] s_logisimBus98;
   wire [31:0] s_logisimBus99;
   wire        s_logisimNet10;
   wire        s_logisimNet12;
   wire        s_logisimNet129;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet24;
   wire        s_logisimNet30;
   wire        s_logisimNet36;
   wire        s_logisimNet47;
   wire        s_logisimNet52;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet55;
   wire        s_logisimNet61;
   wire        s_logisimNet65;
   wire        s_logisimNet67;
   wire        s_logisimNet68;
   wire        s_logisimNet69;
   wire        s_logisimNet70;
   wire        s_logisimNet71;
   wire        s_logisimNet73;
   wire        s_logisimNet74;
   wire        s_logisimNet75;
   wire        s_logisimNet76;
   wire        s_logisimNet77;
   wire        s_logisimNet78;
   wire        s_logisimNet79;
   wire        s_logisimNet80;
   wire        s_logisimNet81;
   wire        s_logisimNet82;
   wire        s_logisimNet83;
   wire        s_logisimNet85;
   wire        s_logisimNet86;
   wire        s_logisimNet93;
   wire        s_logisimNet95;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus87[31:0] = Jin;
   assign s_logisimNet129      = clk;
   assign s_logisimNet52       = Jen;
   assign s_logisimNet81       = rst;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign InstDone = s_logisimNet36;
   assign Jout     = s_logisimBus48[31:0];
   assign PC       = s_logisimBus43[8:0];
   assign R1       = s_logisimBus97[31:0];
   assign R10      = s_logisimBus106[31:0];
   assign R11      = s_logisimBus107[31:0];
   assign R12      = s_logisimBus108[31:0];
   assign R13      = s_logisimBus109[31:0];
   assign R14      = s_logisimBus110[31:0];
   assign R15      = s_logisimBus111[31:0];
   assign R16      = s_logisimBus112[31:0];
   assign R17      = s_logisimBus113[31:0];
   assign R18      = s_logisimBus114[31:0];
   assign R19      = s_logisimBus115[31:0];
   assign R2       = s_logisimBus98[31:0];
   assign R20      = s_logisimBus116[31:0];
   assign R21      = s_logisimBus117[31:0];
   assign R22      = s_logisimBus118[31:0];
   assign R23      = s_logisimBus119[31:0];
   assign R24      = s_logisimBus120[31:0];
   assign R25      = s_logisimBus121[31:0];
   assign R26      = s_logisimBus122[31:0];
   assign R27      = s_logisimBus123[31:0];
   assign R28      = s_logisimBus124[31:0];
   assign R29      = s_logisimBus125[31:0];
   assign R3       = s_logisimBus99[31:0];
   assign R30      = s_logisimBus126[31:0];
   assign R31      = s_logisimBus127[31:0];
   assign R4       = s_logisimBus100[31:0];
   assign R5       = s_logisimBus101[31:0];
   assign R6       = s_logisimBus102[31:0];
   assign R7       = s_logisimBus103[31:0];
   assign R8       = s_logisimBus104[31:0];
   assign R9       = s_logisimBus105[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Bit Extender
   assign  s_logisimBus40[0]  =  s_logisimBus0[0];
   assign  s_logisimBus40[1]  =  s_logisimBus0[1];
   assign  s_logisimBus40[2]  =  s_logisimBus0[2];
   assign  s_logisimBus40[3]  =  s_logisimBus0[3];
   assign  s_logisimBus40[4]  =  s_logisimBus0[4];
   assign  s_logisimBus40[5]  =  s_logisimBus0[5];
   assign  s_logisimBus40[6]  =  s_logisimBus0[6];
   assign  s_logisimBus40[7]  =  s_logisimBus0[7];
   assign  s_logisimBus40[8]  =  s_logisimBus0[8];
   assign  s_logisimBus40[9]  =  s_logisimBus0[9];
   assign  s_logisimBus40[10]  =  s_logisimBus0[10];
   assign  s_logisimBus40[11]  =  s_logisimBus0[11];
   assign  s_logisimBus40[12]  =  s_logisimBus0[12];
   assign  s_logisimBus40[13]  =  s_logisimBus0[13];
   assign  s_logisimBus40[14]  =  s_logisimBus0[14];
   assign  s_logisimBus40[15]  =  s_logisimBus0[15];
   assign  s_logisimBus40[16]  =  s_logisimBus0[15];
   assign  s_logisimBus40[17]  =  s_logisimBus0[15];
   assign  s_logisimBus40[18]  =  s_logisimBus0[15];
   assign  s_logisimBus40[19]  =  s_logisimBus0[15];
   assign  s_logisimBus40[20]  =  s_logisimBus0[15];
   assign  s_logisimBus40[21]  =  s_logisimBus0[15];
   assign  s_logisimBus40[22]  =  s_logisimBus0[15];
   assign  s_logisimBus40[23]  =  s_logisimBus0[15];
   assign  s_logisimBus40[24]  =  s_logisimBus0[15];
   assign  s_logisimBus40[25]  =  s_logisimBus0[15];
   assign  s_logisimBus40[26]  =  s_logisimBus0[15];
   assign  s_logisimBus40[27]  =  s_logisimBus0[15];
   assign  s_logisimBus40[28]  =  s_logisimBus0[15];
   assign  s_logisimBus40[29]  =  s_logisimBus0[15];
   assign  s_logisimBus40[30]  =  s_logisimBus0[15];
   assign  s_logisimBus40[31]  =  s_logisimBus0[15];


   // Constant
   assign  s_logisimNet12  =  1'b1;


   // Constant
   assign  s_logisimNet30  =  1'b1;


   // Constant
   assign  s_logisimNet65  =  1'b1;


   // Constant
   assign  s_logisimNet67  =  1'b1;


   // Constant
   assign  s_logisimBus63[8:0]  =  {1'b0, 8'h01};


   // Constant
   assign  s_logisimNet15  =  1'b1;


   // Constant
   assign  s_logisimBus45[4:0]  =  {1'b1, 4'hF};


   // Constant
   assign  s_logisimBus28[4:0]  =  {1'b0, 4'h0};


   // Bit Extender
   assign  s_logisimBus1[0]  =  s_logisimBus38[0];
   assign  s_logisimBus1[1]  =  s_logisimBus38[1];
   assign  s_logisimBus1[2]  =  s_logisimBus38[2];
   assign  s_logisimBus1[3]  =  s_logisimBus38[3];
   assign  s_logisimBus1[4]  =  s_logisimBus38[4];
   assign  s_logisimBus1[5]  =  s_logisimBus38[5];
   assign  s_logisimBus1[6]  =  s_logisimBus38[6];
   assign  s_logisimBus1[7]  =  s_logisimBus38[7];
   assign  s_logisimBus1[8]  =  s_logisimBus38[8];
   assign  s_logisimBus1[9]  =  1'b0;
   assign  s_logisimBus1[10]  =  1'b0;
   assign  s_logisimBus1[11]  =  1'b0;
   assign  s_logisimBus1[12]  =  1'b0;
   assign  s_logisimBus1[13]  =  1'b0;
   assign  s_logisimBus1[14]  =  1'b0;
   assign  s_logisimBus1[15]  =  1'b0;
   assign  s_logisimBus1[16]  =  1'b0;
   assign  s_logisimBus1[17]  =  1'b0;
   assign  s_logisimBus1[18]  =  1'b0;
   assign  s_logisimBus1[19]  =  1'b0;
   assign  s_logisimBus1[20]  =  1'b0;
   assign  s_logisimBus1[21]  =  1'b0;
   assign  s_logisimBus1[22]  =  1'b0;
   assign  s_logisimBus1[23]  =  1'b0;
   assign  s_logisimBus1[24]  =  1'b0;
   assign  s_logisimBus1[25]  =  1'b0;
   assign  s_logisimBus1[26]  =  1'b0;
   assign  s_logisimBus1[27]  =  1'b0;
   assign  s_logisimBus1[28]  =  1'b0;
   assign  s_logisimBus1[29]  =  1'b0;
   assign  s_logisimBus1[30]  =  1'b0;
   assign  s_logisimBus1[31]  =  1'b0;


   // Constant
   assign  s_logisimNet68  =  1'b1;


   // Bit Extender
   assign  s_logisimBus5[0]  =  s_logisimNet24;
   assign  s_logisimBus5[1]  =  1'b0;
   assign  s_logisimBus5[2]  =  1'b0;
   assign  s_logisimBus5[3]  =  1'b0;
   assign  s_logisimBus5[4]  =  1'b0;
   assign  s_logisimBus5[5]  =  1'b0;
   assign  s_logisimBus5[6]  =  1'b0;
   assign  s_logisimBus5[7]  =  1'b0;
   assign  s_logisimBus5[8]  =  1'b0;
   assign  s_logisimBus5[9]  =  1'b0;
   assign  s_logisimBus5[10]  =  1'b0;
   assign  s_logisimBus5[11]  =  1'b0;
   assign  s_logisimBus5[12]  =  1'b0;
   assign  s_logisimBus5[13]  =  1'b0;
   assign  s_logisimBus5[14]  =  1'b0;
   assign  s_logisimBus5[15]  =  1'b0;
   assign  s_logisimBus5[16]  =  1'b0;
   assign  s_logisimBus5[17]  =  1'b0;
   assign  s_logisimBus5[18]  =  1'b0;
   assign  s_logisimBus5[19]  =  1'b0;
   assign  s_logisimBus5[20]  =  1'b0;
   assign  s_logisimBus5[21]  =  1'b0;
   assign  s_logisimBus5[22]  =  1'b0;
   assign  s_logisimBus5[23]  =  1'b0;
   assign  s_logisimBus5[24]  =  1'b0;
   assign  s_logisimBus5[25]  =  1'b0;
   assign  s_logisimBus5[26]  =  1'b0;
   assign  s_logisimBus5[27]  =  1'b0;
   assign  s_logisimBus5[28]  =  1'b0;
   assign  s_logisimBus5[29]  =  1'b0;
   assign  s_logisimBus5[30]  =  1'b0;
   assign  s_logisimBus5[31]  =  1'b0;


   // Constant
   assign  s_logisimNet69  =  1'b1;


   // Constant
   assign  s_logisimNet70  =  1'b1;


   // Constant
   assign  s_logisimNet71  =  1'b1;


   // Constant
   assign  s_logisimNet73  =  1'b1;


   // Constant
   assign  s_logisimNet10  =  1'b0;


   // Bit Extender
   assign  s_logisimBus22[0]  =  s_logisimBus50[0];
   assign  s_logisimBus22[1]  =  s_logisimBus50[1];
   assign  s_logisimBus22[2]  =  s_logisimBus50[2];
   assign  s_logisimBus22[3]  =  s_logisimBus50[3];
   assign  s_logisimBus22[4]  =  s_logisimBus50[4];
   assign  s_logisimBus22[5]  =  s_logisimBus50[5];
   assign  s_logisimBus22[6]  =  s_logisimBus50[6];
   assign  s_logisimBus22[7]  =  s_logisimBus50[7];
   assign  s_logisimBus22[8]  =  s_logisimBus50[8];
   assign  s_logisimBus22[9]  =  1'b0;
   assign  s_logisimBus22[10]  =  1'b0;
   assign  s_logisimBus22[11]  =  1'b0;
   assign  s_logisimBus22[12]  =  1'b0;
   assign  s_logisimBus22[13]  =  1'b0;
   assign  s_logisimBus22[14]  =  1'b0;
   assign  s_logisimBus22[15]  =  1'b0;
   assign  s_logisimBus22[16]  =  1'b0;
   assign  s_logisimBus22[17]  =  1'b0;
   assign  s_logisimBus22[18]  =  1'b0;
   assign  s_logisimBus22[19]  =  1'b0;
   assign  s_logisimBus22[20]  =  1'b0;
   assign  s_logisimBus22[21]  =  1'b0;
   assign  s_logisimBus22[22]  =  1'b0;
   assign  s_logisimBus22[23]  =  1'b0;
   assign  s_logisimBus22[24]  =  1'b0;
   assign  s_logisimBus22[25]  =  1'b0;
   assign  s_logisimBus22[26]  =  1'b0;
   assign  s_logisimBus22[27]  =  1'b0;
   assign  s_logisimBus22[28]  =  1'b0;
   assign  s_logisimBus22[29]  =  1'b0;
   assign  s_logisimBus22[30]  =  1'b0;
   assign  s_logisimBus22[31]  =  1'b0;


   // Constant
   assign  s_logisimNet74  =  1'b1;


   // Constant
   assign  s_logisimNet75  =  1'b1;


   // Constant
   assign  s_logisimNet76  =  1'b1;


   // Constant
   assign  s_logisimNet77  =  1'b1;


   // Constant
   assign  s_logisimNet78  =  1'b1;


   // Constant
   assign  s_logisimBus29[8:0]  =  {1'b0, 8'h01};


   // Constant
   assign  s_logisimNet79  =  1'b1;


   // Constant
   assign  s_logisimNet61  =  1'b1;


   // Constant
   assign  s_logisimNet80  =  1'b1;


   // Constant
   assign  s_logisimNet14  =  1'b1;


   // Constant
   assign  s_logisimNet55  =  1'b1;


   // Constant
   assign  s_logisimNet82  =  1'b1;


   // Constant
   assign  s_logisimNet83  =  1'b1;


   // Constant
   assign  s_logisimNet85  =  1'b1;


   // Constant
   assign  s_logisimNet86  =  1'b1;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_4 #(.nrOfBits(5))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus28[4:0]),
                 .muxIn_1(s_logisimBus66[4:0]),
                 .muxIn_2(s_logisimBus64[4:0]),
                 .muxIn_3(s_logisimBus45[4:0]),
                 .muxOut(s_logisimBus39[4:0]),
                 .sel(s_logisimBus94[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(32))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus33[31:0]),
                 .muxIn_1(s_logisimBus37[31:0]),
                 .muxIn_2(s_logisimBus5[31:0]),
                 .muxIn_3(s_logisimBus1[31:0]),
                 .muxOut(s_logisimBus9[31:0]),
                 .sel(s_logisimBus2[1:0]));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus41[31:0]),
                 .muxIn_1(s_logisimBus56[31:0]),
                 .muxOut(s_logisimBus6[31:0]),
                 .sel(s_logisimNet54));

   Multiplexer_bus_4 #(.nrOfBits(9))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus27[8:0]),
                 .muxIn_1(s_logisimBus44[8:0]),
                 .muxIn_2(s_logisimBus16[8:0]),
                 .muxIn_3(s_logisimBus46[8:0]),
                 .muxOut(s_logisimBus51[8:0]),
                 .sel(s_logisimBus42[1:0]));

   Adder #(.extendedBits(10),
           .nrOfBits(9))
      ARITH_5 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus63[8:0]),
               .dataB(s_logisimBus43[8:0]),
               .result(s_logisimBus38[8:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_6 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet24),
               .dataA(s_logisimBus128[31:0]),
               .dataB(s_logisimBus56[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_7 (.aEqualsB(s_logisimNet53),
               .aGreaterThanB(),
               .aLessThanB(),
               .dataA(s_logisimBus128[31:0]),
               .dataB(s_logisimBus7[31:0]));

   Adder #(.extendedBits(33),
           .nrOfBits(32))
      ARITH_8 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus22[31:0]),
               .dataB(s_logisimBus17[31:0]),
               .result(s_logisimBus16[31:0]));

   Adder #(.extendedBits(10),
           .nrOfBits(9))
      ARITH_9 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus88[8:0]),
               .dataB(s_logisimBus29[8:0]),
               .result(s_logisimBus27[8:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_10 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet12),
                 .d(s_logisimBus40[31:0]),
                 .q(s_logisimBus56[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(5))
      MEMORY_11 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet65),
                 .d(s_logisimBus57[4:0]),
                 .q(s_logisimBus64[4:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(5))
      MEMORY_12 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet67),
                 .d(s_logisimBus32[4:0]),
                 .q(s_logisimBus66[4:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_13 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet30),
                 .d(s_logisimBus128[31:0]),
                 .q(s_logisimBus46[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_14 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet15),
                 .d(s_logisimBus56[31:0]),
                 .q(s_logisimBus17[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(5))
      MEMORY_15 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet68),
                 .d(s_logisimBus39[4:0]),
                 .q(s_logisimBus35[4:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(5))
      MEMORY_16 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet69),
                 .d(s_logisimBus35[4:0]),
                 .q(s_logisimBus26[4:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_17 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet70),
                 .d(s_logisimBus21[31:0]),
                 .q(s_logisimBus128[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_18 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet71),
                 .d(s_logisimBus41[31:0]),
                 .q(s_logisimBus7[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_19 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet73),
                 .d(s_logisimBus7[31:0]),
                 .q(s_logisimBus72[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_20 (.clock(s_logisimNet129),
                 .d(s_logisimNet53),
                 .preset(1'b0),
                 .q(s_logisimNet93),
                 .qBar(),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(9))
      MEMORY_21 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet74),
                 .d(s_logisimBus88[8:0]),
                 .q(s_logisimBus50[8:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_22 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet75),
                 .d(s_logisimBus4[31:0]),
                 .q(s_logisimBus62[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_23 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet76),
                 .d(s_logisimBus56[31:0]),
                 .q(s_logisimBus44[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_24 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet77),
                 .d(s_logisimBus62[31:0]),
                 .q(s_logisimBus33[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      high (.clock(s_logisimNet129),
            .clockEnable(s_logisimNet47),
            .d(s_logisimBus8[31:0]),
            .q(s_logisimBus18[31:0]),
            .reset(s_logisimNet81),
            .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      low (.clock(s_logisimNet129),
           .clockEnable(s_logisimNet47),
           .d(s_logisimBus4[31:0]),
           .q(s_logisimBus19[31:0]),
           .reset(s_logisimNet81),
           .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_27 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet78),
                 .d(s_logisimBus3[31:0]),
                 .q(s_logisimBus37[31:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(9))
      MEMORY_28 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet79),
                 .d(s_logisimBus50[8:0]),
                 .q(s_logisimBus49[8:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(9))
      pcReg (.clock(s_logisimNet129),
             .clockEnable(s_logisimNet61),
             .d(s_logisimBus51[8:0]),
             .q(s_logisimBus88[8:0]),
             .reset(s_logisimNet81),
             .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(9))
      MEMORY_30 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet80),
                 .d(s_logisimBus49[8:0]),
                 .q(s_logisimBus43[8:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(6))
      MEMORY_31 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet14),
                 .d(s_logisimBus90[5:0]),
                 .q(s_logisimBus92[5:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(6))
      MEMORY_32 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet55),
                 .d(s_logisimBus60[5:0]),
                 .q(s_logisimBus20[5:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(6))
      MEMORY_33 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet82),
                 .d(s_logisimBus92[5:0]),
                 .q(s_logisimBus11[5:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(6))
      MEMORY_34 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet83),
                 .d(s_logisimBus20[5:0]),
                 .q(s_logisimBus31[5:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(6))
      MEMORY_35 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet85),
                 .d(s_logisimBus11[5:0]),
                 .q(s_logisimBus84[5:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(6))
      MEMORY_36 (.clock(s_logisimNet129),
                 .clockEnable(s_logisimNet86),
                 .d(s_logisimBus31[5:0]),
                 .q(s_logisimBus91[5:0]),
                 .reset(s_logisimNet81),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   jtag_ram512   I_cache (.Addr(s_logisimBus88[8:0]),
                          .Din(32'd0),
                          .Dout(s_logisimBus23[31:0]),
                          .Jen(s_logisimNet52),
                          .Jin(s_logisimBus87[31:0]),
                          .Jout(s_logisimBus89[31:0]),
                          .Wen(1'b0),
                          .clk(s_logisimNet129));

   Instruction_Decoder   ID (.funct(s_logisimBus90[5:0]),
                             .immediate(s_logisimBus0[15:0]),
                             .instruction(s_logisimBus23[31:0]),
                             .opcode(s_logisimBus60[5:0]),
                             .rd(s_logisimBus57[4:0]),
                             .rs(s_logisimBus96[4:0]),
                             .rt(s_logisimBus32[4:0]),
                             .shift());

   Control_Unit   CU (.aluOp(s_logisimBus13[3:0]),
                      .b(s_logisimNet54),
                      .ex_func(s_logisimBus92[5:0]),
                      .ex_opcode(s_logisimBus20[5:0]),
                      .mem_func(s_logisimBus11[5:0]),
                      .mem_opcode(s_logisimBus31[5:0]),
                      .pcSrc(s_logisimBus42[1:0]),
                      .rb_opcode(s_logisimBus91[5:0]),
                      .we(s_logisimNet95),
                      .writeData(s_logisimBus2[1:0]),
                      .writeDest(s_logisimBus94[1:0]),
                      .zero(s_logisimNet93));

   regfile   RF (.Aread0(s_logisimBus96[4:0]),
                 .Aread1(s_logisimBus66[4:0]),
                 .Awrite(s_logisimBus26[4:0]),
                 .Dread0(s_logisimBus21[31:0]),
                 .Dread1(s_logisimBus41[31:0]),
                 .Dwrite(s_logisimBus9[31:0]),
                 .R1(s_logisimBus97[31:0]),
                 .R10(s_logisimBus106[31:0]),
                 .R11(s_logisimBus107[31:0]),
                 .R12(s_logisimBus108[31:0]),
                 .R13(s_logisimBus109[31:0]),
                 .R14(s_logisimBus110[31:0]),
                 .R15(s_logisimBus111[31:0]),
                 .R16(s_logisimBus112[31:0]),
                 .R17(s_logisimBus113[31:0]),
                 .R18(s_logisimBus114[31:0]),
                 .R19(s_logisimBus115[31:0]),
                 .R2(s_logisimBus98[31:0]),
                 .R20(s_logisimBus116[31:0]),
                 .R21(s_logisimBus117[31:0]),
                 .R22(s_logisimBus118[31:0]),
                 .R23(s_logisimBus119[31:0]),
                 .R24(s_logisimBus120[31:0]),
                 .R25(s_logisimBus121[31:0]),
                 .R26(s_logisimBus122[31:0]),
                 .R27(s_logisimBus123[31:0]),
                 .R28(s_logisimBus124[31:0]),
                 .R29(s_logisimBus125[31:0]),
                 .R3(s_logisimBus99[31:0]),
                 .R30(s_logisimBus126[31:0]),
                 .R31(s_logisimBus127[31:0]),
                 .R4(s_logisimBus100[31:0]),
                 .R5(s_logisimBus101[31:0]),
                 .R6(s_logisimBus102[31:0]),
                 .R7(s_logisimBus103[31:0]),
                 .R8(s_logisimBus104[31:0]),
                 .R9(s_logisimBus105[31:0]),
                 .clk(s_logisimNet129),
                 .rst(s_logisimNet81));

   ALU   alu_circ (.a(s_logisimBus128[31:0]),
                   .aluop(s_logisimBus13[3:0]),
                   .b(s_logisimBus6[31:0]),
                   .clk(s_logisimNet129),
                   .done(s_logisimNet36),
                   .output_inc(s_logisimNet10),
                   .output_inverted(s_logisimNet10),
                   .res_high(s_logisimBus8[31:0]),
                   .res_low(s_logisimBus4[31:0]),
                   .rst(s_logisimNet81));

   jtag_ram512   D_cache (.Addr(s_logisimBus62[8:0]),
                          .Din(s_logisimBus72[31:0]),
                          .Dout(s_logisimBus3[31:0]),
                          .Jen(s_logisimNet52),
                          .Jin(s_logisimBus89[31:0]),
                          .Jout(s_logisimBus48[31:0]),
                          .Wen(s_logisimNet95),
                          .clk(s_logisimNet129));

endmodule
