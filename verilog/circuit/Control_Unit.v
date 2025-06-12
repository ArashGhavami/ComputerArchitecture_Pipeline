/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Control_Unit                                                 **
 **                                                                          **
 *****************************************************************************/

module Control_Unit( aluOp,
                     b,
                     ex_func,
                     ex_opcode,
                     mem_func,
                     mem_opcode,
                     pcSrc,
                     rb_opcode,
                     we,
                     writeData,
                     writeDest,
                     zero );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [5:0] ex_func;
   input [5:0] ex_opcode;
   input [5:0] mem_func;
   input [5:0] mem_opcode;
   input [5:0] rb_opcode;
   input       zero;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] aluOp;
   output       b;
   output [1:0] pcSrc;
   output       we;
   output [1:0] writeData;
   output [1:0] writeDest;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [1:0] s_logisimBus24;
   wire [5:0] s_logisimBus25;
   wire [1:0] s_logisimBus29;
   wire [5:0] s_logisimBus31;
   wire [3:0] s_logisimBus39;
   wire [1:0] s_logisimBus40;
   wire [5:0] s_logisimBus41;
   wire [5:0] s_logisimBus42;
   wire [5:0] s_logisimBus47;
   wire [5:0] s_logisimBus48;
   wire [5:0] s_logisimBus49;
   wire [5:0] s_logisimBus7;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet4;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus25[5:0] = ex_func;
   assign s_logisimBus31[5:0] = ex_opcode;
   assign s_logisimBus41[5:0] = mem_func;
   assign s_logisimBus42[5:0] = rb_opcode;
   assign s_logisimBus7[5:0]  = mem_opcode;
   assign s_logisimNet5       = zero;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign aluOp     = s_logisimBus39[3:0];
   assign b         = s_logisimNet44;
   assign pcSrc     = s_logisimBus24[1:0];
   assign we        = s_logisimNet35;
   assign writeData = s_logisimBus40[1:0];
   assign writeDest = s_logisimBus29[1:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus39[3:0]  =  4'h0;


   // Constant
   assign  s_logisimBus47[5:0]  =  {2'b00, 4'h3};


   // Constant
   assign  s_logisimBus48[5:0]  =  {2'b00, 4'h3};


   // Constant
   assign  s_logisimBus49[5:0]  =  {2'b00, 4'h2};


   // NOT Gate
   assign s_logisimNet13 = ~s_logisimBus7[0];

   // NOT Gate
   assign s_logisimNet33 = ~s_logisimNet5;

   // NOT Gate
   assign s_logisimNet8 = ~s_logisimBus42[5];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet45),
               .input2(s_logisimBus41[3]),
               .result(s_logisimNet37));

   NOR_GATE_6_INPUTS #(.BubblesMask({2'b00, 4'h0}))
      GATES_2 (.input1(s_logisimBus31[5]),
               .input2(s_logisimBus31[4]),
               .input3(s_logisimBus31[3]),
               .input4(s_logisimBus31[1]),
               .input5(s_logisimBus31[2]),
               .input6(s_logisimBus31[0]),
               .result(s_logisimNet15));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_3 (.input1(s_logisimBus7[0]),
               .input2(s_logisimBus7[1]),
               .input3(s_logisimBus7[5]),
               .result(s_logisimNet35));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimBus31[3]),
               .input2(s_logisimBus31[5]),
               .result(s_logisimNet44));

   NOR_GATE_6_INPUTS #(.BubblesMask({2'b00, 4'h0}))
      GATES_5 (.input1(s_logisimBus7[0]),
               .input2(s_logisimBus7[1]),
               .input3(s_logisimBus7[2]),
               .input4(s_logisimBus7[5]),
               .input5(s_logisimBus7[4]),
               .input6(s_logisimBus7[3]),
               .result(s_logisimNet45));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_6 (.input1(s_logisimNet11),
               .input2(s_logisimBus31[5]),
               .input3(s_logisimBus31[3]),
               .result(s_logisimBus29[0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet15),
               .input2(s_logisimBus25[5]),
               .result(s_logisimNet38));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet11),
               .input2(s_logisimNet38),
               .result(s_logisimBus29[1]));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_9 (.input1(s_logisimBus7[2]),
               .input2(s_logisimNet13),
               .input3(s_logisimNet5),
               .result(s_logisimNet2));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_10 (.input1(s_logisimBus7[2]),
                .input2(s_logisimBus7[0]),
                .input3(s_logisimNet33),
                .result(s_logisimNet20));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_11 (.input1(s_logisimNet37),
                .input2(s_logisimNet2),
                .input3(s_logisimNet20),
                .result(s_logisimBus24[1]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimBus42[0]),
                .input2(s_logisimBus42[1]),
                .result(s_logisimBus40[0]));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_13 (.input1(s_logisimNet37),
                .input2(s_logisimNet46),
                .input3(s_logisimNet34),
                .result(s_logisimBus24[0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimBus40[0]),
                .input2(s_logisimNet8),
                .result(s_logisimBus40[1]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_15 (.aEqualsB(s_logisimNet11),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus31[5:0]),
                .dataB(s_logisimBus47[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_16 (.aEqualsB(s_logisimNet34),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus7[5:0]),
                .dataB(s_logisimBus48[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_17 (.aEqualsB(s_logisimNet46),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus7[5:0]),
                .dataB(s_logisimBus49[5:0]));


endmodule
