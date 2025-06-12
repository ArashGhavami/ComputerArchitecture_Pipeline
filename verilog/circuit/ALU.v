/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ALU                                                          **
 **                                                                          **
 *****************************************************************************/

module ALU( a,
            aluop,
            b,
            clk,
            done,
            output_inc,
            output_inverted,
            res_high,
            res_low,
            rst );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [31:0] a;
   input [3:0]  aluop;
   input [31:0] b;
   input        clk;
   input        output_inc;
   input        output_inverted;
   input        rst;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output        done;
   output [31:0] res_high;
   output [31:0] res_low;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus10;
   wire [63:0] s_logisimBus100;
   wire [31:0] s_logisimBus101;
   wire [31:0] s_logisimBus102;
   wire [31:0] s_logisimBus104;
   wire [31:0] s_logisimBus105;
   wire [31:0] s_logisimBus106;
   wire [31:0] s_logisimBus112;
   wire [31:0] s_logisimBus113;
   wire [4:0]  s_logisimBus124;
   wire [5:0]  s_logisimBus125;
   wire [4:0]  s_logisimBus126;
   wire [63:0] s_logisimBus128;
   wire [31:0] s_logisimBus129;
   wire [63:0] s_logisimBus13;
   wire [31:0] s_logisimBus131;
   wire [31:0] s_logisimBus132;
   wire [63:0] s_logisimBus139;
   wire [63:0] s_logisimBus14;
   wire [5:0]  s_logisimBus146;
   wire [4:0]  s_logisimBus147;
   wire [31:0] s_logisimBus148;
   wire [3:0]  s_logisimBus15;
   wire [31:0] s_logisimBus153;
   wire [63:0] s_logisimBus154;
   wire [5:0]  s_logisimBus16;
   wire [63:0] s_logisimBus160;
   wire [31:0] s_logisimBus167;
   wire [63:0] s_logisimBus175;
   wire [31:0] s_logisimBus176;
   wire [5:0]  s_logisimBus181;
   wire [31:0] s_logisimBus2;
   wire [3:0]  s_logisimBus23;
   wire [4:0]  s_logisimBus24;
   wire [63:0] s_logisimBus26;
   wire [31:0] s_logisimBus27;
   wire [63:0] s_logisimBus28;
   wire [63:0] s_logisimBus29;
   wire [3:0]  s_logisimBus31;
   wire [3:0]  s_logisimBus33;
   wire [31:0] s_logisimBus34;
   wire [31:0] s_logisimBus35;
   wire [31:0] s_logisimBus36;
   wire [5:0]  s_logisimBus42;
   wire [63:0] s_logisimBus44;
   wire [3:0]  s_logisimBus47;
   wire [5:0]  s_logisimBus48;
   wire [5:0]  s_logisimBus49;
   wire [63:0] s_logisimBus52;
   wire [63:0] s_logisimBus61;
   wire [63:0] s_logisimBus62;
   wire [4:0]  s_logisimBus64;
   wire [4:0]  s_logisimBus7;
   wire [31:0] s_logisimBus72;
   wire [31:0] s_logisimBus73;
   wire [63:0] s_logisimBus74;
   wire [31:0] s_logisimBus77;
   wire [31:0] s_logisimBus78;
   wire [31:0] s_logisimBus79;
   wire [5:0]  s_logisimBus8;
   wire [63:0] s_logisimBus83;
   wire [63:0] s_logisimBus9;
   wire [2:0]  s_logisimBus91;
   wire [31:0] s_logisimBus93;
   wire [5:0]  s_logisimBus94;
   wire [4:0]  s_logisimBus95;
   wire [31:0] s_logisimBus99;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet103;
   wire        s_logisimNet107;
   wire        s_logisimNet108;
   wire        s_logisimNet109;
   wire        s_logisimNet110;
   wire        s_logisimNet114;
   wire        s_logisimNet115;
   wire        s_logisimNet116;
   wire        s_logisimNet117;
   wire        s_logisimNet119;
   wire        s_logisimNet12;
   wire        s_logisimNet120;
   wire        s_logisimNet121;
   wire        s_logisimNet122;
   wire        s_logisimNet123;
   wire        s_logisimNet130;
   wire        s_logisimNet133;
   wire        s_logisimNet134;
   wire        s_logisimNet135;
   wire        s_logisimNet136;
   wire        s_logisimNet137;
   wire        s_logisimNet138;
   wire        s_logisimNet140;
   wire        s_logisimNet141;
   wire        s_logisimNet142;
   wire        s_logisimNet144;
   wire        s_logisimNet145;
   wire        s_logisimNet149;
   wire        s_logisimNet150;
   wire        s_logisimNet151;
   wire        s_logisimNet152;
   wire        s_logisimNet155;
   wire        s_logisimNet156;
   wire        s_logisimNet157;
   wire        s_logisimNet158;
   wire        s_logisimNet161;
   wire        s_logisimNet162;
   wire        s_logisimNet163;
   wire        s_logisimNet164;
   wire        s_logisimNet165;
   wire        s_logisimNet166;
   wire        s_logisimNet168;
   wire        s_logisimNet169;
   wire        s_logisimNet17;
   wire        s_logisimNet170;
   wire        s_logisimNet171;
   wire        s_logisimNet172;
   wire        s_logisimNet173;
   wire        s_logisimNet177;
   wire        s_logisimNet178;
   wire        s_logisimNet179;
   wire        s_logisimNet18;
   wire        s_logisimNet180;
   wire        s_logisimNet19;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet25;
   wire        s_logisimNet3;
   wire        s_logisimNet30;
   wire        s_logisimNet32;
   wire        s_logisimNet37;
   wire        s_logisimNet38;
   wire        s_logisimNet39;
   wire        s_logisimNet4;
   wire        s_logisimNet40;
   wire        s_logisimNet41;
   wire        s_logisimNet45;
   wire        s_logisimNet5;
   wire        s_logisimNet50;
   wire        s_logisimNet51;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet55;
   wire        s_logisimNet56;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet59;
   wire        s_logisimNet6;
   wire        s_logisimNet60;
   wire        s_logisimNet63;
   wire        s_logisimNet66;
   wire        s_logisimNet67;
   wire        s_logisimNet68;
   wire        s_logisimNet69;
   wire        s_logisimNet70;
   wire        s_logisimNet71;
   wire        s_logisimNet75;
   wire        s_logisimNet76;
   wire        s_logisimNet81;
   wire        s_logisimNet84;
   wire        s_logisimNet85;
   wire        s_logisimNet86;
   wire        s_logisimNet87;
   wire        s_logisimNet90;
   wire        s_logisimNet92;
   wire        s_logisimNet96;
   wire        s_logisimNet97;
   wire        s_logisimNet98;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus113[0]  = s_logisimNet5;
   assign s_logisimBus113[10] = s_logisimNet5;
   assign s_logisimBus113[11] = s_logisimNet5;
   assign s_logisimBus113[12] = s_logisimNet5;
   assign s_logisimBus113[13] = s_logisimNet5;
   assign s_logisimBus113[14] = s_logisimNet5;
   assign s_logisimBus113[15] = s_logisimNet5;
   assign s_logisimBus113[16] = s_logisimNet5;
   assign s_logisimBus113[17] = s_logisimNet5;
   assign s_logisimBus113[18] = s_logisimNet5;
   assign s_logisimBus113[19] = s_logisimNet5;
   assign s_logisimBus113[1]  = s_logisimNet5;
   assign s_logisimBus113[20] = s_logisimNet5;
   assign s_logisimBus113[21] = s_logisimNet5;
   assign s_logisimBus113[22] = s_logisimNet5;
   assign s_logisimBus113[23] = s_logisimNet5;
   assign s_logisimBus113[24] = s_logisimNet5;
   assign s_logisimBus113[25] = s_logisimNet5;
   assign s_logisimBus113[26] = s_logisimNet5;
   assign s_logisimBus113[27] = s_logisimNet5;
   assign s_logisimBus113[28] = s_logisimNet5;
   assign s_logisimBus113[29] = s_logisimNet5;
   assign s_logisimBus113[2]  = s_logisimNet5;
   assign s_logisimBus113[30] = s_logisimNet5;
   assign s_logisimBus113[31] = s_logisimNet5;
   assign s_logisimBus113[3]  = s_logisimNet5;
   assign s_logisimBus113[4]  = s_logisimNet5;
   assign s_logisimBus113[5]  = s_logisimNet5;
   assign s_logisimBus113[6]  = s_logisimNet5;
   assign s_logisimBus113[7]  = s_logisimNet5;
   assign s_logisimBus113[8]  = s_logisimNet5;
   assign s_logisimBus113[9]  = s_logisimNet5;
   assign s_logisimBus14[0]   = s_logisimBus148[0];
   assign s_logisimBus14[10]  = s_logisimBus148[10];
   assign s_logisimBus14[11]  = s_logisimBus148[11];
   assign s_logisimBus14[12]  = s_logisimBus148[12];
   assign s_logisimBus14[13]  = s_logisimBus148[13];
   assign s_logisimBus14[14]  = s_logisimBus148[14];
   assign s_logisimBus14[15]  = s_logisimBus148[15];
   assign s_logisimBus14[16]  = s_logisimBus148[16];
   assign s_logisimBus14[17]  = s_logisimBus148[17];
   assign s_logisimBus14[18]  = s_logisimBus148[18];
   assign s_logisimBus14[19]  = s_logisimBus148[19];
   assign s_logisimBus14[1]   = s_logisimBus148[1];
   assign s_logisimBus14[20]  = s_logisimBus148[20];
   assign s_logisimBus14[21]  = s_logisimBus148[21];
   assign s_logisimBus14[22]  = s_logisimBus148[22];
   assign s_logisimBus14[23]  = s_logisimBus148[23];
   assign s_logisimBus14[24]  = s_logisimBus148[24];
   assign s_logisimBus14[25]  = s_logisimBus148[25];
   assign s_logisimBus14[26]  = s_logisimBus148[26];
   assign s_logisimBus14[27]  = s_logisimBus148[27];
   assign s_logisimBus14[28]  = s_logisimBus148[28];
   assign s_logisimBus14[29]  = s_logisimBus148[29];
   assign s_logisimBus14[2]   = s_logisimBus148[2];
   assign s_logisimBus14[30]  = s_logisimBus148[30];
   assign s_logisimBus14[31]  = s_logisimBus148[31];
   assign s_logisimBus14[3]   = s_logisimBus148[3];
   assign s_logisimBus14[4]   = s_logisimBus148[4];
   assign s_logisimBus14[5]   = s_logisimBus148[5];
   assign s_logisimBus14[6]   = s_logisimBus148[6];
   assign s_logisimBus14[7]   = s_logisimBus148[7];
   assign s_logisimBus14[8]   = s_logisimBus148[8];
   assign s_logisimBus14[9]   = s_logisimBus148[9];
   assign s_logisimBus175[0]  = s_logisimBus148[0];
   assign s_logisimBus175[10] = s_logisimBus148[10];
   assign s_logisimBus175[11] = s_logisimBus148[11];
   assign s_logisimBus175[12] = s_logisimBus148[12];
   assign s_logisimBus175[13] = s_logisimBus148[13];
   assign s_logisimBus175[14] = s_logisimBus148[14];
   assign s_logisimBus175[15] = s_logisimBus148[15];
   assign s_logisimBus175[16] = s_logisimBus148[16];
   assign s_logisimBus175[17] = s_logisimBus148[17];
   assign s_logisimBus175[18] = s_logisimBus148[18];
   assign s_logisimBus175[19] = s_logisimBus148[19];
   assign s_logisimBus175[1]  = s_logisimBus148[1];
   assign s_logisimBus175[20] = s_logisimBus148[20];
   assign s_logisimBus175[21] = s_logisimBus148[21];
   assign s_logisimBus175[22] = s_logisimBus148[22];
   assign s_logisimBus175[23] = s_logisimBus148[23];
   assign s_logisimBus175[24] = s_logisimBus148[24];
   assign s_logisimBus175[25] = s_logisimBus148[25];
   assign s_logisimBus175[26] = s_logisimBus148[26];
   assign s_logisimBus175[27] = s_logisimBus148[27];
   assign s_logisimBus175[28] = s_logisimBus148[28];
   assign s_logisimBus175[29] = s_logisimBus148[29];
   assign s_logisimBus175[2]  = s_logisimBus148[2];
   assign s_logisimBus175[30] = s_logisimBus148[30];
   assign s_logisimBus175[31] = s_logisimBus148[31];
   assign s_logisimBus175[3]  = s_logisimBus148[3];
   assign s_logisimBus175[4]  = s_logisimBus148[4];
   assign s_logisimBus175[5]  = s_logisimBus148[5];
   assign s_logisimBus175[6]  = s_logisimBus148[6];
   assign s_logisimBus175[7]  = s_logisimBus148[7];
   assign s_logisimBus175[8]  = s_logisimBus148[8];
   assign s_logisimBus175[9]  = s_logisimBus148[9];
   assign s_logisimBus52[10]  = s_logisimNet6;
   assign s_logisimBus52[11]  = s_logisimNet6;
   assign s_logisimBus52[12]  = s_logisimNet6;
   assign s_logisimBus52[13]  = s_logisimNet6;
   assign s_logisimBus52[14]  = s_logisimNet6;
   assign s_logisimBus52[15]  = s_logisimNet6;
   assign s_logisimBus52[16]  = s_logisimNet6;
   assign s_logisimBus52[17]  = s_logisimNet6;
   assign s_logisimBus52[18]  = s_logisimNet6;
   assign s_logisimBus52[19]  = s_logisimNet6;
   assign s_logisimBus52[1]   = s_logisimNet6;
   assign s_logisimBus52[20]  = s_logisimNet6;
   assign s_logisimBus52[21]  = s_logisimNet6;
   assign s_logisimBus52[22]  = s_logisimNet6;
   assign s_logisimBus52[23]  = s_logisimNet6;
   assign s_logisimBus52[24]  = s_logisimNet6;
   assign s_logisimBus52[25]  = s_logisimNet6;
   assign s_logisimBus52[26]  = s_logisimNet6;
   assign s_logisimBus52[27]  = s_logisimNet6;
   assign s_logisimBus52[28]  = s_logisimNet6;
   assign s_logisimBus52[29]  = s_logisimNet6;
   assign s_logisimBus52[2]   = s_logisimNet6;
   assign s_logisimBus52[30]  = s_logisimNet6;
   assign s_logisimBus52[31]  = s_logisimNet6;
   assign s_logisimBus52[32]  = s_logisimNet6;
   assign s_logisimBus52[33]  = s_logisimNet6;
   assign s_logisimBus52[34]  = s_logisimNet6;
   assign s_logisimBus52[35]  = s_logisimNet6;
   assign s_logisimBus52[36]  = s_logisimNet6;
   assign s_logisimBus52[37]  = s_logisimNet6;
   assign s_logisimBus52[38]  = s_logisimNet6;
   assign s_logisimBus52[39]  = s_logisimNet6;
   assign s_logisimBus52[3]   = s_logisimNet6;
   assign s_logisimBus52[40]  = s_logisimNet6;
   assign s_logisimBus52[41]  = s_logisimNet6;
   assign s_logisimBus52[42]  = s_logisimNet6;
   assign s_logisimBus52[43]  = s_logisimNet6;
   assign s_logisimBus52[44]  = s_logisimNet6;
   assign s_logisimBus52[45]  = s_logisimNet6;
   assign s_logisimBus52[46]  = s_logisimNet6;
   assign s_logisimBus52[47]  = s_logisimNet6;
   assign s_logisimBus52[48]  = s_logisimNet6;
   assign s_logisimBus52[49]  = s_logisimNet6;
   assign s_logisimBus52[4]   = s_logisimNet6;
   assign s_logisimBus52[50]  = s_logisimNet6;
   assign s_logisimBus52[51]  = s_logisimNet6;
   assign s_logisimBus52[52]  = s_logisimNet6;
   assign s_logisimBus52[53]  = s_logisimNet6;
   assign s_logisimBus52[54]  = s_logisimNet6;
   assign s_logisimBus52[55]  = s_logisimNet6;
   assign s_logisimBus52[56]  = s_logisimNet6;
   assign s_logisimBus52[57]  = s_logisimNet6;
   assign s_logisimBus52[58]  = s_logisimNet6;
   assign s_logisimBus52[59]  = s_logisimNet6;
   assign s_logisimBus52[5]   = s_logisimNet6;
   assign s_logisimBus52[60]  = s_logisimNet6;
   assign s_logisimBus52[61]  = s_logisimNet6;
   assign s_logisimBus52[62]  = s_logisimNet6;
   assign s_logisimBus52[63]  = s_logisimNet6;
   assign s_logisimBus52[6]   = s_logisimNet6;
   assign s_logisimBus52[7]   = s_logisimNet6;
   assign s_logisimBus52[8]   = s_logisimNet6;
   assign s_logisimBus52[9]   = s_logisimNet6;
   assign s_logisimBus61[0]   = s_logisimBus148[0];
   assign s_logisimBus61[10]  = s_logisimBus148[10];
   assign s_logisimBus61[11]  = s_logisimBus148[11];
   assign s_logisimBus61[12]  = s_logisimBus148[12];
   assign s_logisimBus61[13]  = s_logisimBus148[13];
   assign s_logisimBus61[14]  = s_logisimBus148[14];
   assign s_logisimBus61[15]  = s_logisimBus148[15];
   assign s_logisimBus61[16]  = s_logisimBus148[16];
   assign s_logisimBus61[17]  = s_logisimBus148[17];
   assign s_logisimBus61[18]  = s_logisimBus148[18];
   assign s_logisimBus61[19]  = s_logisimBus148[19];
   assign s_logisimBus61[1]   = s_logisimBus148[1];
   assign s_logisimBus61[20]  = s_logisimBus148[20];
   assign s_logisimBus61[21]  = s_logisimBus148[21];
   assign s_logisimBus61[22]  = s_logisimBus148[22];
   assign s_logisimBus61[23]  = s_logisimBus148[23];
   assign s_logisimBus61[24]  = s_logisimBus148[24];
   assign s_logisimBus61[25]  = s_logisimBus148[25];
   assign s_logisimBus61[26]  = s_logisimBus148[26];
   assign s_logisimBus61[27]  = s_logisimBus148[27];
   assign s_logisimBus61[28]  = s_logisimBus148[28];
   assign s_logisimBus61[29]  = s_logisimBus148[29];
   assign s_logisimBus61[2]   = s_logisimBus148[2];
   assign s_logisimBus61[30]  = s_logisimBus148[30];
   assign s_logisimBus61[31]  = s_logisimBus148[31];
   assign s_logisimBus61[3]   = s_logisimBus148[3];
   assign s_logisimBus61[4]   = s_logisimBus148[4];
   assign s_logisimBus61[5]   = s_logisimBus148[5];
   assign s_logisimBus61[6]   = s_logisimBus148[6];
   assign s_logisimBus61[7]   = s_logisimBus148[7];
   assign s_logisimBus61[8]   = s_logisimBus148[8];
   assign s_logisimBus61[9]   = s_logisimBus148[9];
   assign s_logisimBus95[0]   = s_logisimNet51;
   assign s_logisimBus95[1]   = s_logisimNet137;
   assign s_logisimBus95[2]   = s_logisimNet173;
   assign s_logisimBus95[3]   = s_logisimNet71;
   assign s_logisimBus95[4]   = s_logisimNet123;
   assign s_logisimNet123     = s_logisimBus77[4];
   assign s_logisimNet137     = s_logisimBus77[1];
   assign s_logisimNet173     = s_logisimBus77[2];
   assign s_logisimNet51      = s_logisimBus77[0];
   assign s_logisimNet71      = s_logisimBus77[3];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus148[31:0] = a;
   assign s_logisimBus23[3:0]   = aluop;
   assign s_logisimBus52[0]     = output_inc;
   assign s_logisimBus77[31:0]  = b;
   assign s_logisimNet138       = output_inverted;
   assign s_logisimNet161       = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign done     = s_logisimNet168;
   assign res_high = s_logisimBus139[63:32];
   assign res_low  = s_logisimBus139[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet140  =  1'b1;


   // Constant
   assign  s_logisimBus153[31:0]  =  32'h00000001;


   // Constant
   assign  s_logisimBus91[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus64[4:0]  =  {1'b1, 4'hF};


   // Constant
   assign  s_logisimBus124[4:0]  =  {1'b0, 4'h1};


   // Constant
   assign  s_logisimNet6  =  1'b0;


   // Bit Extender
   assign  s_logisimBus14[32]  =  s_logisimBus148[31];
   assign  s_logisimBus14[33]  =  s_logisimBus148[31];
   assign  s_logisimBus14[34]  =  s_logisimBus148[31];
   assign  s_logisimBus14[35]  =  s_logisimBus148[31];
   assign  s_logisimBus14[36]  =  s_logisimBus148[31];
   assign  s_logisimBus14[37]  =  s_logisimBus148[31];
   assign  s_logisimBus14[38]  =  s_logisimBus148[31];
   assign  s_logisimBus14[39]  =  s_logisimBus148[31];
   assign  s_logisimBus14[40]  =  s_logisimBus148[31];
   assign  s_logisimBus14[41]  =  s_logisimBus148[31];
   assign  s_logisimBus14[42]  =  s_logisimBus148[31];
   assign  s_logisimBus14[43]  =  s_logisimBus148[31];
   assign  s_logisimBus14[44]  =  s_logisimBus148[31];
   assign  s_logisimBus14[45]  =  s_logisimBus148[31];
   assign  s_logisimBus14[46]  =  s_logisimBus148[31];
   assign  s_logisimBus14[47]  =  s_logisimBus148[31];
   assign  s_logisimBus14[48]  =  s_logisimBus148[31];
   assign  s_logisimBus14[49]  =  s_logisimBus148[31];
   assign  s_logisimBus14[50]  =  s_logisimBus148[31];
   assign  s_logisimBus14[51]  =  s_logisimBus148[31];
   assign  s_logisimBus14[52]  =  s_logisimBus148[31];
   assign  s_logisimBus14[53]  =  s_logisimBus148[31];
   assign  s_logisimBus14[54]  =  s_logisimBus148[31];
   assign  s_logisimBus14[55]  =  s_logisimBus148[31];
   assign  s_logisimBus14[56]  =  s_logisimBus148[31];
   assign  s_logisimBus14[57]  =  s_logisimBus148[31];
   assign  s_logisimBus14[58]  =  s_logisimBus148[31];
   assign  s_logisimBus14[59]  =  s_logisimBus148[31];
   assign  s_logisimBus14[60]  =  s_logisimBus148[31];
   assign  s_logisimBus14[61]  =  s_logisimBus148[31];
   assign  s_logisimBus14[62]  =  s_logisimBus148[31];
   assign  s_logisimBus14[63]  =  s_logisimBus148[31];


   // Constant
   assign  s_logisimBus175[63:32]  =  32'h00000000;


   // Bit Extender
   assign  s_logisimBus16[0]  =  s_logisimBus95[0];
   assign  s_logisimBus16[1]  =  s_logisimBus95[1];
   assign  s_logisimBus16[2]  =  s_logisimBus95[2];
   assign  s_logisimBus16[3]  =  s_logisimBus95[3];
   assign  s_logisimBus16[4]  =  s_logisimBus95[4];
   assign  s_logisimBus16[5]  =  1'b0;


   // Constant
   assign  s_logisimBus72[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimBus112[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimBus48[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus24[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus146[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus147[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus61[63:32]  =  32'h00000000;


   // Bit Extender
   assign  s_logisimBus49[0]  =  s_logisimBus126[0];
   assign  s_logisimBus49[1]  =  s_logisimBus126[1];
   assign  s_logisimBus49[2]  =  s_logisimBus126[2];
   assign  s_logisimBus49[3]  =  s_logisimBus126[3];
   assign  s_logisimBus49[4]  =  s_logisimBus126[4];
   assign  s_logisimBus49[5]  =  1'b0;


   // Constant
   assign  s_logisimBus125[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus31[3:0]  =  4'h2;


   // Constant
   assign  s_logisimBus15[3:0]  =  4'h3;


   // Bit Extender
   assign  s_logisimBus102[0]  =  s_logisimBus8[0];
   assign  s_logisimBus102[1]  =  s_logisimBus8[1];
   assign  s_logisimBus102[2]  =  s_logisimBus8[2];
   assign  s_logisimBus102[3]  =  s_logisimBus8[3];
   assign  s_logisimBus102[4]  =  s_logisimBus8[4];
   assign  s_logisimBus102[5]  =  s_logisimBus8[5];
   assign  s_logisimBus102[6]  =  1'b0;
   assign  s_logisimBus102[7]  =  1'b0;
   assign  s_logisimBus102[8]  =  1'b0;
   assign  s_logisimBus102[9]  =  1'b0;
   assign  s_logisimBus102[10]  =  1'b0;
   assign  s_logisimBus102[11]  =  1'b0;
   assign  s_logisimBus102[12]  =  1'b0;
   assign  s_logisimBus102[13]  =  1'b0;
   assign  s_logisimBus102[14]  =  1'b0;
   assign  s_logisimBus102[15]  =  1'b0;
   assign  s_logisimBus102[16]  =  1'b0;
   assign  s_logisimBus102[17]  =  1'b0;
   assign  s_logisimBus102[18]  =  1'b0;
   assign  s_logisimBus102[19]  =  1'b0;
   assign  s_logisimBus102[20]  =  1'b0;
   assign  s_logisimBus102[21]  =  1'b0;
   assign  s_logisimBus102[22]  =  1'b0;
   assign  s_logisimBus102[23]  =  1'b0;
   assign  s_logisimBus102[24]  =  1'b0;
   assign  s_logisimBus102[25]  =  1'b0;
   assign  s_logisimBus102[26]  =  1'b0;
   assign  s_logisimBus102[27]  =  1'b0;
   assign  s_logisimBus102[28]  =  1'b0;
   assign  s_logisimBus102[29]  =  1'b0;
   assign  s_logisimBus102[30]  =  1'b0;
   assign  s_logisimBus102[31]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus34[0]  =  s_logisimBus94[0];
   assign  s_logisimBus34[1]  =  s_logisimBus94[1];
   assign  s_logisimBus34[2]  =  s_logisimBus94[2];
   assign  s_logisimBus34[3]  =  s_logisimBus94[3];
   assign  s_logisimBus34[4]  =  s_logisimBus94[4];
   assign  s_logisimBus34[5]  =  s_logisimBus94[5];
   assign  s_logisimBus34[6]  =  1'b0;
   assign  s_logisimBus34[7]  =  1'b0;
   assign  s_logisimBus34[8]  =  1'b0;
   assign  s_logisimBus34[9]  =  1'b0;
   assign  s_logisimBus34[10]  =  1'b0;
   assign  s_logisimBus34[11]  =  1'b0;
   assign  s_logisimBus34[12]  =  1'b0;
   assign  s_logisimBus34[13]  =  1'b0;
   assign  s_logisimBus34[14]  =  1'b0;
   assign  s_logisimBus34[15]  =  1'b0;
   assign  s_logisimBus34[16]  =  1'b0;
   assign  s_logisimBus34[17]  =  1'b0;
   assign  s_logisimBus34[18]  =  1'b0;
   assign  s_logisimBus34[19]  =  1'b0;
   assign  s_logisimBus34[20]  =  1'b0;
   assign  s_logisimBus34[21]  =  1'b0;
   assign  s_logisimBus34[22]  =  1'b0;
   assign  s_logisimBus34[23]  =  1'b0;
   assign  s_logisimBus34[24]  =  1'b0;
   assign  s_logisimBus34[25]  =  1'b0;
   assign  s_logisimBus34[26]  =  1'b0;
   assign  s_logisimBus34[27]  =  1'b0;
   assign  s_logisimBus34[28]  =  1'b0;
   assign  s_logisimBus34[29]  =  1'b0;
   assign  s_logisimBus34[30]  =  1'b0;
   assign  s_logisimBus34[31]  =  1'b0;


   // Constant
   assign  s_logisimBus10[31:0]  =  32'h00000000;


   // Bit Extender
   assign  s_logisimBus78[0]  =  s_logisimNet30;
   assign  s_logisimBus78[1]  =  1'b0;
   assign  s_logisimBus78[2]  =  1'b0;
   assign  s_logisimBus78[3]  =  1'b0;
   assign  s_logisimBus78[4]  =  1'b0;
   assign  s_logisimBus78[5]  =  1'b0;
   assign  s_logisimBus78[6]  =  1'b0;
   assign  s_logisimBus78[7]  =  1'b0;
   assign  s_logisimBus78[8]  =  1'b0;
   assign  s_logisimBus78[9]  =  1'b0;
   assign  s_logisimBus78[10]  =  1'b0;
   assign  s_logisimBus78[11]  =  1'b0;
   assign  s_logisimBus78[12]  =  1'b0;
   assign  s_logisimBus78[13]  =  1'b0;
   assign  s_logisimBus78[14]  =  1'b0;
   assign  s_logisimBus78[15]  =  1'b0;
   assign  s_logisimBus78[16]  =  1'b0;
   assign  s_logisimBus78[17]  =  1'b0;
   assign  s_logisimBus78[18]  =  1'b0;
   assign  s_logisimBus78[19]  =  1'b0;
   assign  s_logisimBus78[20]  =  1'b0;
   assign  s_logisimBus78[21]  =  1'b0;
   assign  s_logisimBus78[22]  =  1'b0;
   assign  s_logisimBus78[23]  =  1'b0;
   assign  s_logisimBus78[24]  =  1'b0;
   assign  s_logisimBus78[25]  =  1'b0;
   assign  s_logisimBus78[26]  =  1'b0;
   assign  s_logisimBus78[27]  =  1'b0;
   assign  s_logisimBus78[28]  =  1'b0;
   assign  s_logisimBus78[29]  =  1'b0;
   assign  s_logisimBus78[30]  =  1'b0;
   assign  s_logisimBus78[31]  =  1'b0;


   // NOT Gate
   assign s_logisimBus62 = ~s_logisimBus160;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   XOR_GATE_BUS_ONEHOT #(.BubblesMask(2'b00),
                         .NrOfBits(32))
      GATES_1 (.input1(s_logisimBus131[31:0]),
               .input2(s_logisimBus148[31:0]),
               .result(s_logisimBus99[31:0]));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(2'b00),
                         .NrOfBits(32))
      GATES_2 (.input1(s_logisimBus93[31:0]),
               .input2(s_logisimBus77[31:0]),
               .result(s_logisimBus73[31:0]));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_3 (.input1(s_logisimBus33[0]),
               .input2(s_logisimBus33[1]),
               .input3(s_logisimBus33[3]),
               .input4(s_logisimBus33[2]),
               .result(s_logisimNet32));

   OR_GATE_32_INPUTS #(.BubblesMask(32'h00000000))
      GATES_4 (.input1(s_logisimBus99[0]),
               .input10(s_logisimBus99[9]),
               .input11(s_logisimBus99[10]),
               .input12(s_logisimBus99[11]),
               .input13(s_logisimBus99[12]),
               .input14(s_logisimBus99[13]),
               .input15(s_logisimBus99[14]),
               .input16(s_logisimBus99[15]),
               .input17(s_logisimBus99[17]),
               .input18(s_logisimBus99[18]),
               .input19(s_logisimBus99[19]),
               .input2(s_logisimBus99[1]),
               .input20(s_logisimBus99[20]),
               .input21(s_logisimBus99[21]),
               .input22(s_logisimBus99[22]),
               .input23(s_logisimBus99[23]),
               .input24(s_logisimBus99[24]),
               .input25(s_logisimBus99[25]),
               .input26(s_logisimBus99[26]),
               .input27(s_logisimBus99[27]),
               .input28(s_logisimBus99[28]),
               .input29(s_logisimBus99[29]),
               .input3(s_logisimBus99[2]),
               .input30(s_logisimBus99[30]),
               .input31(s_logisimBus99[31]),
               .input32(s_logisimBus99[16]),
               .input4(s_logisimBus99[3]),
               .input5(s_logisimBus99[4]),
               .input6(s_logisimBus99[5]),
               .input7(s_logisimBus99[6]),
               .input8(s_logisimBus99[7]),
               .input9(s_logisimBus99[8]),
               .result(s_logisimNet0));

   OR_GATE_32_INPUTS #(.BubblesMask(32'h00000000))
      GATES_5 (.input1(s_logisimBus73[0]),
               .input10(s_logisimBus73[9]),
               .input11(s_logisimBus73[10]),
               .input12(s_logisimBus73[11]),
               .input13(s_logisimBus73[12]),
               .input14(s_logisimBus73[13]),
               .input15(s_logisimBus73[14]),
               .input16(s_logisimBus73[15]),
               .input17(s_logisimBus73[17]),
               .input18(s_logisimBus73[18]),
               .input19(s_logisimBus73[19]),
               .input2(s_logisimBus73[1]),
               .input20(s_logisimBus73[20]),
               .input21(s_logisimBus73[21]),
               .input22(s_logisimBus73[22]),
               .input23(s_logisimBus73[23]),
               .input24(s_logisimBus73[24]),
               .input25(s_logisimBus73[25]),
               .input26(s_logisimBus73[26]),
               .input27(s_logisimBus73[27]),
               .input28(s_logisimBus73[28]),
               .input29(s_logisimBus73[29]),
               .input3(s_logisimBus73[2]),
               .input30(s_logisimBus73[30]),
               .input31(s_logisimBus73[31]),
               .input32(s_logisimBus73[16]),
               .input4(s_logisimBus73[3]),
               .input5(s_logisimBus73[4]),
               .input6(s_logisimBus73[5]),
               .input7(s_logisimBus73[6]),
               .input8(s_logisimBus73[7]),
               .input9(s_logisimBus73[8]),
               .result(s_logisimNet60));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_6 (.input1(s_logisimNet0),
               .input2(s_logisimNet60),
               .input3(s_logisimNet32),
               .result(s_logisimNet17));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet17),
               .input2(s_logisimNet92),
               .result(s_logisimNet90));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet51),
               .input2(s_logisimNet25),
               .result(s_logisimNet66));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimBus126[0]),
               .input2(s_logisimNet25),
               .result(s_logisimNet41));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(32))
      GATES_10 (.input1(s_logisimBus101[31:0]),
                .input2(s_logisimBus128[31:0]),
                .result(s_logisimBus106[31:0]));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(32))
      GATES_11 (.input1(s_logisimBus148[31:0]),
                .input2(s_logisimBus77[31:0]),
                .result(s_logisimBus2[31:0]));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(32))
      GATES_12 (.input1(s_logisimBus148[31:0]),
                .input2(s_logisimBus77[31:0]),
                .result(s_logisimBus79[31:0]));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(2'b00),
                         .NrOfBits(32))
      GATES_13 (.input1(s_logisimBus148[31:0]),
                .input2(s_logisimBus77[31:0]),
                .result(s_logisimBus104[31:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet103),
                .input2(s_logisimNet1),
                .result(s_logisimNet92));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(2'b00),
                         .NrOfBits(4))
      GATES_15 (.input1(s_logisimBus47[3:0]),
                .input2(s_logisimBus23[3:0]),
                .result(s_logisimBus33[3:0]));

   Multiplexer_bus_16 #(.nrOfBits(32))
      PLEXERS_16 (.enable(1'b1),
                  .muxIn_0(s_logisimBus27[31:0]),
                  .muxIn_1(s_logisimBus105[31:0]),
                  .muxIn_10(s_logisimBus101[31:0]),
                  .muxIn_11(s_logisimBus36[31:0]),
                  .muxIn_12(s_logisimBus106[31:0]),
                  .muxIn_13(32'd0),
                  .muxIn_14(32'd0),
                  .muxIn_15(32'd0),
                  .muxIn_2(s_logisimBus74[31:0]),
                  .muxIn_3(s_logisimBus35[31:0]),
                  .muxIn_4(s_logisimBus2[31:0]),
                  .muxIn_5(s_logisimBus79[31:0]),
                  .muxIn_6(s_logisimBus104[31:0]),
                  .muxIn_7(s_logisimBus102[31:0]),
                  .muxIn_8(s_logisimBus34[31:0]),
                  .muxIn_9(s_logisimBus154[31:0]),
                  .muxOut(s_logisimBus160[31:0]),
                  .sel(s_logisimBus23[3:0]));

   Multiplexer_bus_16 #(.nrOfBits(32))
      PLEXERS_17 (.enable(1'b1),
                  .muxIn_0(s_logisimBus78[31:0]),
                  .muxIn_1(s_logisimBus113[31:0]),
                  .muxIn_10(s_logisimBus10[31:0]),
                  .muxIn_11(s_logisimBus14[63:32]),
                  .muxIn_12(s_logisimBus10[31:0]),
                  .muxIn_13(32'd0),
                  .muxIn_14(32'd0),
                  .muxIn_15(32'd0),
                  .muxIn_2(s_logisimBus74[63:32]),
                  .muxIn_3(s_logisimBus167[31:0]),
                  .muxIn_4(s_logisimBus10[31:0]),
                  .muxIn_5(s_logisimBus10[31:0]),
                  .muxIn_6(s_logisimBus10[31:0]),
                  .muxIn_7(s_logisimBus10[31:0]),
                  .muxIn_8(s_logisimBus10[31:0]),
                  .muxIn_9(s_logisimBus154[63:32]),
                  .muxOut(s_logisimBus160[63:32]),
                  .sel(s_logisimBus23[3:0]));

   Multiplexer_2   PLEXERS_18 (.enable(1'b1),
                               .muxIn_0(s_logisimNet81),
                               .muxIn_1(s_logisimNet130),
                               .muxOut(s_logisimNet45),
                               .sel(s_logisimNet1));

   Multiplexer_2   PLEXERS_19 (.enable(1'b1),
                               .muxIn_0(s_logisimNet140),
                               .muxIn_1(s_logisimNet45),
                               .muxOut(s_logisimNet168),
                               .sel(s_logisimNet92));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_20 (.enable(1'b1),
                  .muxIn_0(s_logisimBus160[63:0]),
                  .muxIn_1(s_logisimBus62[63:0]),
                  .muxOut(s_logisimBus100[63:0]),
                  .sel(s_logisimNet138));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_21 (.enable(1'b1),
                  .muxIn_0(s_logisimBus129[31:0]),
                  .muxIn_1(s_logisimBus148[31:0]),
                  .muxOut(s_logisimBus167[31:0]),
                  .sel(s_logisimNet53));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_22 (.enable(1'b1),
                  .muxIn_0(s_logisimBus176[31:0]),
                  .muxIn_1(s_logisimBus72[31:0]),
                  .muxOut(s_logisimBus35[31:0]),
                  .sel(s_logisimNet53));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_23 (.enable(1'b1),
                  .muxIn_0(s_logisimBus28[63:0]),
                  .muxIn_1(s_logisimBus13[63:0]),
                  .muxOut(s_logisimBus154[63:0]),
                  .sel(s_logisimNet66));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_24 (.enable(1'b1),
                  .muxIn_0(s_logisimBus9[63:0]),
                  .muxIn_1(s_logisimBus29[63:0]),
                  .muxOut(s_logisimBus26[63:0]),
                  .sel(s_logisimNet51));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_25 (.enable(1'b1),
                  .muxIn_0(s_logisimBus26[31:0]),
                  .muxIn_1(s_logisimBus148[31:0]),
                  .muxOut(s_logisimBus36[31:0]),
                  .sel(s_logisimNet3));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_26 (.enable(1'b1),
                  .muxIn_0(s_logisimBus83[63:0]),
                  .muxIn_1(s_logisimBus44[63:0]),
                  .muxOut(s_logisimBus128[63:0]),
                  .sel(s_logisimNet41));

   Subtractor #(.extendedBits(33),
                .nrOfBits(32))
      ARITH_27 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus77[31:0]),
                .dataB(s_logisimBus153[31:0]),
                .result(s_logisimBus132[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(0))
      ARITH_28 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet5),
                .dataA(s_logisimBus148[31:0]),
                .dataB(s_logisimBus77[31:0]));

   Shifter_6_bit #(.shifterMode(0))
      ARITH_29 (.dataA(s_logisimBus132[5:0]),
                .result(s_logisimBus42[5:0]),
                .shiftAmount(s_logisimBus91[2:0]));

   Subtractor #(.extendedBits(6),
                .nrOfBits(5))
      ARITH_30 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus64[4:0]),
                .dataB(s_logisimBus95[4:0]),
                .result(s_logisimBus7[4:0]));

   Shifter_6_bit #(.shifterMode(2))
      ARITH_31 (.dataA(s_logisimBus42[5:0]),
                .result(s_logisimBus181[5:0]),
                .shiftAmount(s_logisimBus91[2:0]));

   Adder #(.extendedBits(6),
           .nrOfBits(5))
      ARITH_32 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus7[4:0]),
                .dataB(s_logisimBus124[4:0]),
                .result(s_logisimBus126[4:0]));

   Adder #(.extendedBits(65),
           .nrOfBits(64))
      ARITH_33 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus100[63:0]),
                .dataB(s_logisimBus52[63:0]),
                .result(s_logisimBus139[63:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(0))
      ARITH_34 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet53),
                .dataA(s_logisimBus148[31:0]),
                .dataB(s_logisimBus77[31:0]));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_35 (.dataA(s_logisimBus175[63:0]),
                .result(s_logisimBus13[63:0]),
                .shiftAmount(s_logisimBus16[5:0]));

   Shifter_64_bit #(.shifterMode(2))
      ARITH_36 (.dataA(s_logisimBus13[63:0]),
                .result(s_logisimBus28[63:0]),
                .shiftAmount(s_logisimBus48[5:0]));

   Shifter_64_bit #(.shifterMode(3))
      ARITH_37 (.dataA(s_logisimBus14[63:0]),
                .result(s_logisimBus29[63:0]),
                .shiftAmount(s_logisimBus181[5:0]));

   Comparator #(.nrOfBits(5),
                .twosComplement(1))
      ARITH_38 (.aEqualsB(s_logisimNet25),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus95[4:0]),
                .dataB(s_logisimBus24[4:0]));

   Shifter_64_bit #(.shifterMode(3))
      ARITH_39 (.dataA(s_logisimBus29[63:0]),
                .result(s_logisimBus9[63:0]),
                .shiftAmount(s_logisimBus146[5:0]));

   Comparator #(.nrOfBits(5),
                .twosComplement(1))
      ARITH_40 (.aEqualsB(s_logisimNet3),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus95[4:0]),
                .dataB(s_logisimBus147[4:0]));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_41 (.dataA(s_logisimBus61[63:0]),
                .result(s_logisimBus44[63:0]),
                .shiftAmount(s_logisimBus49[5:0]));

   Shifter_64_bit #(.shifterMode(2))
      ARITH_42 (.dataA(s_logisimBus44[63:0]),
                .result(s_logisimBus83[63:0]),
                .shiftAmount(s_logisimBus125[5:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_43 (.aEqualsB(s_logisimNet103),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus23[3:0]),
                .dataB(s_logisimBus31[3:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_44 (.aEqualsB(s_logisimNet1),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus23[3:0]),
                .dataB(s_logisimBus15[3:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_45 (.clock(s_logisimNet161),
                 .clockEnable(1'b1),
                 .d(s_logisimBus23[3:0]),
                 .q(s_logisimBus47[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_46 (.clock(s_logisimNet161),
                 .clockEnable(1'b1),
                 .d(s_logisimBus148[31:0]),
                 .q(s_logisimBus131[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_47 (.clock(s_logisimNet161),
                 .clockEnable(1'b1),
                 .d(s_logisimBus77[31:0]),
                 .q(s_logisimBus93[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   srlShift   righeShift (.in1(s_logisimBus148[31:0]),
                          .out1(s_logisimBus101[31:0]),
                          .shift(s_logisimBus95[4:0]));

   add_sub   add (.c(s_logisimNet30),
                  .c_in(s_logisimBus23[0]),
                  .in1(s_logisimBus148[31:0]),
                  .in2(s_logisimBus77[31:0]),
                  .s(s_logisimBus27[31:0]),
                  .sub_notAdd(s_logisimBus23[0]));

   add_sub   sub (.c(),
                  .c_in(s_logisimBus23[0]),
                  .in1(s_logisimBus148[31:0]),
                  .in2(s_logisimBus77[31:0]),
                  .s(s_logisimBus105[31:0]),
                  .sub_notAdd(s_logisimBus23[0]));

   mul   mul_circ (.clk(s_logisimNet161),
                   .done(s_logisimNet81),
                   .multiplicand(s_logisimBus148[31:0]),
                   .mutiplier(s_logisimBus77[31:0]),
                   .result(s_logisimBus74[63:0]),
                   .strat(s_logisimNet90));

   div   div_circ (.clk(s_logisimNet161),
                   .dividend(s_logisimBus148[31:0]),
                   .divisor(s_logisimBus77[31:0]),
                   .done(s_logisimNet130),
                   .quotient(s_logisimBus176[31:0]),
                   .remainder(s_logisimBus129[31:0]),
                   .start(s_logisimNet90));

   clz   clz_circ (.in1(s_logisimBus148[31:0]),
                   .out1(s_logisimBus94[5:0]));

   clo   clo_circ (.in1(s_logisimBus148[31:0]),
                   .out1(s_logisimBus8[5:0]));

endmodule
