/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : mul                                                          **
 **                                                                          **
 *****************************************************************************/

module mul( clk,
            done,
            multiplicand,
            mutiplier,
            result,
            strat );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input        clk;
   input [31:0] multiplicand;
   input [31:0] mutiplier;
   input        strat;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output        done;
   output [63:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [5:0]  s_logisimBus1;
   wire [31:0] s_logisimBus10;
   wire [63:0] s_logisimBus12;
   wire [4:0]  s_logisimBus14;
   wire [5:0]  s_logisimBus15;
   wire [31:0] s_logisimBus17;
   wire [63:0] s_logisimBus19;
   wire [31:0] s_logisimBus2;
   wire [63:0] s_logisimBus20;
   wire [63:0] s_logisimBus21;
   wire [31:0] s_logisimBus22;
   wire [31:0] s_logisimBus23;
   wire [63:0] s_logisimBus27;
   wire [63:0] s_logisimBus3;
   wire [63:0] s_logisimBus33;
   wire [1:0]  s_logisimBus34;
   wire [31:0] s_logisimBus38;
   wire [63:0] s_logisimBus39;
   wire [63:0] s_logisimBus41;
   wire [31:0] s_logisimBus43;
   wire [63:0] s_logisimBus44;
   wire [31:0] s_logisimBus45;
   wire [63:0] s_logisimBus46;
   wire [31:0] s_logisimBus47;
   wire [31:0] s_logisimBus48;
   wire [63:0] s_logisimBus49;
   wire [63:0] s_logisimBus5;
   wire [63:0] s_logisimBus50;
   wire [31:0] s_logisimBus51;
   wire [31:0] s_logisimBus52;
   wire [31:0] s_logisimBus8;
   wire        s_logisimNet29;
   wire        s_logisimNet30;
   wire        s_logisimNet36;
   wire        s_logisimNet37;
   wire        s_logisimNet4;
   wire        s_logisimNet40;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet55;
   wire        s_logisimNet56;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus19[0]  = s_logisimBus38[0];
   assign s_logisimBus19[10] = s_logisimBus38[10];
   assign s_logisimBus19[11] = s_logisimBus38[11];
   assign s_logisimBus19[12] = s_logisimBus38[12];
   assign s_logisimBus19[13] = s_logisimBus38[13];
   assign s_logisimBus19[14] = s_logisimBus38[14];
   assign s_logisimBus19[15] = s_logisimBus38[15];
   assign s_logisimBus19[16] = s_logisimBus38[16];
   assign s_logisimBus19[17] = s_logisimBus38[17];
   assign s_logisimBus19[18] = s_logisimBus38[18];
   assign s_logisimBus19[19] = s_logisimBus38[19];
   assign s_logisimBus19[1]  = s_logisimBus38[1];
   assign s_logisimBus19[20] = s_logisimBus38[20];
   assign s_logisimBus19[21] = s_logisimBus38[21];
   assign s_logisimBus19[22] = s_logisimBus38[22];
   assign s_logisimBus19[23] = s_logisimBus38[23];
   assign s_logisimBus19[24] = s_logisimBus38[24];
   assign s_logisimBus19[25] = s_logisimBus38[25];
   assign s_logisimBus19[26] = s_logisimBus38[26];
   assign s_logisimBus19[27] = s_logisimBus38[27];
   assign s_logisimBus19[28] = s_logisimBus38[28];
   assign s_logisimBus19[29] = s_logisimBus38[29];
   assign s_logisimBus19[2]  = s_logisimBus38[2];
   assign s_logisimBus19[30] = s_logisimBus38[30];
   assign s_logisimBus19[31] = s_logisimBus38[31];
   assign s_logisimBus19[3]  = s_logisimBus38[3];
   assign s_logisimBus19[4]  = s_logisimBus38[4];
   assign s_logisimBus19[5]  = s_logisimBus38[5];
   assign s_logisimBus19[6]  = s_logisimBus38[6];
   assign s_logisimBus19[7]  = s_logisimBus38[7];
   assign s_logisimBus19[8]  = s_logisimBus38[8];
   assign s_logisimBus19[9]  = s_logisimBus38[9];
   assign s_logisimBus38[0]  = s_logisimBus5[0];
   assign s_logisimBus38[10] = s_logisimBus5[10];
   assign s_logisimBus38[11] = s_logisimBus5[11];
   assign s_logisimBus38[12] = s_logisimBus5[12];
   assign s_logisimBus38[13] = s_logisimBus5[13];
   assign s_logisimBus38[14] = s_logisimBus5[14];
   assign s_logisimBus38[15] = s_logisimBus5[15];
   assign s_logisimBus38[16] = s_logisimBus5[16];
   assign s_logisimBus38[17] = s_logisimBus5[17];
   assign s_logisimBus38[18] = s_logisimBus5[18];
   assign s_logisimBus38[19] = s_logisimBus5[19];
   assign s_logisimBus38[1]  = s_logisimBus5[1];
   assign s_logisimBus38[20] = s_logisimBus5[20];
   assign s_logisimBus38[21] = s_logisimBus5[21];
   assign s_logisimBus38[22] = s_logisimBus5[22];
   assign s_logisimBus38[23] = s_logisimBus5[23];
   assign s_logisimBus38[24] = s_logisimBus5[24];
   assign s_logisimBus38[25] = s_logisimBus5[25];
   assign s_logisimBus38[26] = s_logisimBus5[26];
   assign s_logisimBus38[27] = s_logisimBus5[27];
   assign s_logisimBus38[28] = s_logisimBus5[28];
   assign s_logisimBus38[29] = s_logisimBus5[29];
   assign s_logisimBus38[2]  = s_logisimBus5[2];
   assign s_logisimBus38[30] = s_logisimBus5[30];
   assign s_logisimBus38[31] = s_logisimBus5[31];
   assign s_logisimBus38[3]  = s_logisimBus5[3];
   assign s_logisimBus38[4]  = s_logisimBus5[4];
   assign s_logisimBus38[5]  = s_logisimBus5[5];
   assign s_logisimBus38[6]  = s_logisimBus5[6];
   assign s_logisimBus38[7]  = s_logisimBus5[7];
   assign s_logisimBus38[8]  = s_logisimBus5[8];
   assign s_logisimBus38[9]  = s_logisimBus5[9];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus43[31:0] = mutiplier;
   assign s_logisimBus45[31:0] = multiplicand;
   assign s_logisimNet4        = strat;
   assign s_logisimNet9        = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign done   = s_logisimNet40;
   assign result = s_logisimBus19[63:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet55  =  1'b0;


   // Constant
   assign  s_logisimNet56  =  1'b0;


   // Bit Extender
   assign  s_logisimBus48[0]  =  s_logisimBus34[0];
   assign  s_logisimBus48[1]  =  s_logisimBus34[1];
   assign  s_logisimBus48[2]  =  1'b0;
   assign  s_logisimBus48[3]  =  1'b0;
   assign  s_logisimBus48[4]  =  1'b0;
   assign  s_logisimBus48[5]  =  1'b0;
   assign  s_logisimBus48[6]  =  1'b0;
   assign  s_logisimBus48[7]  =  1'b0;
   assign  s_logisimBus48[8]  =  1'b0;
   assign  s_logisimBus48[9]  =  1'b0;
   assign  s_logisimBus48[10]  =  1'b0;
   assign  s_logisimBus48[11]  =  1'b0;
   assign  s_logisimBus48[12]  =  1'b0;
   assign  s_logisimBus48[13]  =  1'b0;
   assign  s_logisimBus48[14]  =  1'b0;
   assign  s_logisimBus48[15]  =  1'b0;
   assign  s_logisimBus48[16]  =  1'b0;
   assign  s_logisimBus48[17]  =  1'b0;
   assign  s_logisimBus48[18]  =  1'b0;
   assign  s_logisimBus48[19]  =  1'b0;
   assign  s_logisimBus48[20]  =  1'b0;
   assign  s_logisimBus48[21]  =  1'b0;
   assign  s_logisimBus48[22]  =  1'b0;
   assign  s_logisimBus48[23]  =  1'b0;
   assign  s_logisimBus48[24]  =  1'b0;
   assign  s_logisimBus48[25]  =  1'b0;
   assign  s_logisimBus48[26]  =  1'b0;
   assign  s_logisimBus48[27]  =  1'b0;
   assign  s_logisimBus48[28]  =  1'b0;
   assign  s_logisimBus48[29]  =  1'b0;
   assign  s_logisimBus48[30]  =  1'b0;
   assign  s_logisimBus48[31]  =  1'b0;


   // Constant
   assign  s_logisimNet57  =  1'b0;


   // Constant
   assign  s_logisimBus39[63:0]  =  64'h0000000000000000;


   // Constant
   assign  s_logisimBus52[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimNet36  =  1'b1;


   // Constant
   assign  s_logisimNet37  =  1'b1;


   // Constant
   assign  s_logisimNet58  =  1'b0;


   // Bit Extender
   assign  s_logisimBus49[0]  =  s_logisimBus45[0];
   assign  s_logisimBus49[1]  =  s_logisimBus45[1];
   assign  s_logisimBus49[2]  =  s_logisimBus45[2];
   assign  s_logisimBus49[3]  =  s_logisimBus45[3];
   assign  s_logisimBus49[4]  =  s_logisimBus45[4];
   assign  s_logisimBus49[5]  =  s_logisimBus45[5];
   assign  s_logisimBus49[6]  =  s_logisimBus45[6];
   assign  s_logisimBus49[7]  =  s_logisimBus45[7];
   assign  s_logisimBus49[8]  =  s_logisimBus45[8];
   assign  s_logisimBus49[9]  =  s_logisimBus45[9];
   assign  s_logisimBus49[10]  =  s_logisimBus45[10];
   assign  s_logisimBus49[11]  =  s_logisimBus45[11];
   assign  s_logisimBus49[12]  =  s_logisimBus45[12];
   assign  s_logisimBus49[13]  =  s_logisimBus45[13];
   assign  s_logisimBus49[14]  =  s_logisimBus45[14];
   assign  s_logisimBus49[15]  =  s_logisimBus45[15];
   assign  s_logisimBus49[16]  =  s_logisimBus45[16];
   assign  s_logisimBus49[17]  =  s_logisimBus45[17];
   assign  s_logisimBus49[18]  =  s_logisimBus45[18];
   assign  s_logisimBus49[19]  =  s_logisimBus45[19];
   assign  s_logisimBus49[20]  =  s_logisimBus45[20];
   assign  s_logisimBus49[21]  =  s_logisimBus45[21];
   assign  s_logisimBus49[22]  =  s_logisimBus45[22];
   assign  s_logisimBus49[23]  =  s_logisimBus45[23];
   assign  s_logisimBus49[24]  =  s_logisimBus45[24];
   assign  s_logisimBus49[25]  =  s_logisimBus45[25];
   assign  s_logisimBus49[26]  =  s_logisimBus45[26];
   assign  s_logisimBus49[27]  =  s_logisimBus45[27];
   assign  s_logisimBus49[28]  =  s_logisimBus45[28];
   assign  s_logisimBus49[29]  =  s_logisimBus45[29];
   assign  s_logisimBus49[30]  =  s_logisimBus45[30];
   assign  s_logisimBus49[31]  =  s_logisimBus45[31];
   assign  s_logisimBus49[32]  =  1'b0;
   assign  s_logisimBus49[33]  =  1'b0;
   assign  s_logisimBus49[34]  =  1'b0;
   assign  s_logisimBus49[35]  =  1'b0;
   assign  s_logisimBus49[36]  =  1'b0;
   assign  s_logisimBus49[37]  =  1'b0;
   assign  s_logisimBus49[38]  =  1'b0;
   assign  s_logisimBus49[39]  =  1'b0;
   assign  s_logisimBus49[40]  =  1'b0;
   assign  s_logisimBus49[41]  =  1'b0;
   assign  s_logisimBus49[42]  =  1'b0;
   assign  s_logisimBus49[43]  =  1'b0;
   assign  s_logisimBus49[44]  =  1'b0;
   assign  s_logisimBus49[45]  =  1'b0;
   assign  s_logisimBus49[46]  =  1'b0;
   assign  s_logisimBus49[47]  =  1'b0;
   assign  s_logisimBus49[48]  =  1'b0;
   assign  s_logisimBus49[49]  =  1'b0;
   assign  s_logisimBus49[50]  =  1'b0;
   assign  s_logisimBus49[51]  =  1'b0;
   assign  s_logisimBus49[52]  =  1'b0;
   assign  s_logisimBus49[53]  =  1'b0;
   assign  s_logisimBus49[54]  =  1'b0;
   assign  s_logisimBus49[55]  =  1'b0;
   assign  s_logisimBus49[56]  =  1'b0;
   assign  s_logisimBus49[57]  =  1'b0;
   assign  s_logisimBus49[58]  =  1'b0;
   assign  s_logisimBus49[59]  =  1'b0;
   assign  s_logisimBus49[60]  =  1'b0;
   assign  s_logisimBus49[61]  =  1'b0;
   assign  s_logisimBus49[62]  =  1'b0;
   assign  s_logisimBus49[63]  =  1'b0;


   // Constant

   // Constant
   assign  s_logisimNet53  =  1'b1;


   // Constant
   assign  s_logisimNet54  =  1'b1;


   // Constant
   assign  s_logisimBus1[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus15[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus14[4:0]  =  {1'b0, 4'h1};


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_4 #(.nrOfBits(64))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus5[63:0]),
                 .muxIn_1(s_logisimBus20[63:0]),
                 .muxIn_2(s_logisimBus27[63:0]),
                 .muxIn_3(s_logisimBus3[63:0]),
                 .muxOut(s_logisimBus41[63:0]),
                 .sel(s_logisimBus23[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(32))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus2[31:0]),
                 .muxIn_1(s_logisimBus2[31:0]),
                 .muxIn_2(s_logisimBus2[31:0]),
                 .muxIn_3(s_logisimBus47[31:0]),
                 .muxOut(s_logisimBus8[31:0]),
                 .sel(s_logisimBus23[1:0]));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus41[63:0]),
                 .muxIn_1(s_logisimBus39[63:0]),
                 .muxOut(s_logisimBus46[63:0]),
                 .sel(s_logisimNet4));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus8[31:0]),
                 .muxIn_1(s_logisimBus52[31:0]),
                 .muxOut(s_logisimBus10[31:0]),
                 .sel(s_logisimNet4));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_5 (.enable(1'b1),
                 .muxIn_0(s_logisimBus12[63:0]),
                 .muxIn_1(s_logisimBus49[63:0]),
                 .muxOut(s_logisimBus50[63:0]),
                 .sel(s_logisimNet4));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_6 (.enable(1'b1),
                 .muxIn_0(s_logisimBus22[31:0]),
                 .muxIn_1(s_logisimBus43[31:0]),
                 .muxOut(s_logisimBus51[31:0]),
                 .sel(s_logisimNet4));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_7 (.dataA(s_logisimBus21[63:0]),
               .result(s_logisimBus33[63:0]),
               .shiftAmount(s_logisimBus15[5:0]));

   Shifter_32_bit #(.shifterMode(2))
      ARITH_8 (.dataA(s_logisimBus23[31:0]),
               .result(s_logisimBus17[31:0]),
               .shiftAmount(s_logisimBus14[4:0]));

   Shifter_32_bit #(.shifterMode(2))
      ARITH_9 (.dataA(s_logisimBus17[31:0]),
               .result(s_logisimBus22[31:0]),
               .shiftAmount(s_logisimBus14[4:0]));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_10 (.dataA(s_logisimBus21[63:0]),
                .result(s_logisimBus44[63:0]),
                .shiftAmount(s_logisimBus1[5:0]));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_11 (.dataA(s_logisimBus44[63:0]),
                .result(s_logisimBus12[63:0]),
                .shiftAmount(s_logisimBus1[5:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      carry (.clock(s_logisimNet9),
             .clockEnable(s_logisimNet36),
             .d(s_logisimBus10[31:0]),
             .q(s_logisimBus2[31:0]),
             .reset(1'b0),
             .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(64))
      temp_res (.clock(s_logisimNet9),
                .clockEnable(s_logisimNet37),
                .d(s_logisimBus46[63:0]),
                .q(s_logisimBus5[63:0]),
                .reset(1'b0),
                .tick(1'b1));

   LogisimCounter #(.invertClock(0),
                    .maxVal(4'hE),
                    .mode(0),
                    .width(4))
      MEMORY_14 (.clear(s_logisimNet4),
                 .clock(s_logisimNet9),
                 .compareOut(s_logisimNet40),
                 .countValue(),
                 .enable(1'b1),
                 .load(s_logisimNet4),
                 .loadData(4'd0),
                 .tick(1'b1),
                 .upNotDown(1'b0));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(64))
      MEMORY_15 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet53),
                 .d(s_logisimBus50[63:0]),
                 .q(s_logisimBus21[63:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_16 (.clock(s_logisimNet9),
                 .clockEnable(s_logisimNet54),
                 .d(s_logisimBus51[31:0]),
                 .q(s_logisimBus23[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   carrySaveAdder   A3 (.carry(s_logisimBus34[1:0]),
                        .in1(s_logisimBus21[31:0]),
                        .in2(s_logisimBus33[31:0]),
                        .in3(s_logisimBus5[31:0]),
                        .sum(s_logisimBus3[31:0]));

   carrySaveAdder   A4 (.carry(),
                        .in1(s_logisimBus21[63:32]),
                        .in2(s_logisimBus33[63:32]),
                        .in3(s_logisimBus5[63:32]),
                        .sum(s_logisimBus3[63:32]));

   carrySelectAdder   A0 (.c(s_logisimNet29),
                          .c_in(s_logisimNet55),
                          .in1(s_logisimBus21[31:0]),
                          .in2(s_logisimBus5[31:0]),
                          .s(s_logisimBus20[31:0]));

   carrySelectAdder   A7 (.c(),
                          .c_in(s_logisimNet29),
                          .in1(s_logisimBus21[63:32]),
                          .in2(s_logisimBus5[63:32]),
                          .s(s_logisimBus20[63:32]));

   carrySelectAdder   A1 (.c(s_logisimNet30),
                          .c_in(s_logisimNet56),
                          .in1(s_logisimBus33[31:0]),
                          .in2(s_logisimBus5[31:0]),
                          .s(s_logisimBus27[31:0]));

   carrySelectAdder   A2 (.c(),
                          .c_in(s_logisimNet30),
                          .in1(s_logisimBus33[63:32]),
                          .in2(s_logisimBus5[63:32]),
                          .s(s_logisimBus27[63:32]));

   carrySelectAdder   A5 (.c(),
                          .c_in(s_logisimNet57),
                          .in1(s_logisimBus48[31:0]),
                          .in2(s_logisimBus2[31:0]),
                          .s(s_logisimBus47[31:0]));

   carrySelectAdder   A6 (.c(),
                          .c_in(s_logisimNet58),
                          .in1(s_logisimBus5[63:32]),
                          .in2(s_logisimBus2[31:0]),
                          .s(s_logisimBus19[63:32]));

endmodule
