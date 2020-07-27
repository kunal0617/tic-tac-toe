`timescale 1ns / 1ps

module tb_tic_tac_toe;

 // Inputs
 reg clock;
 reg reset;
 reg play;
 reg [3:0] player2_position;
 reg [3:0] player1_position;

 // Outputs
 wire [1:0] pos_led1;
 wire [1:0] pos_led2;
 wire [1:0] pos_led3;
 wire [1:0] pos_led4;
 wire [1:0] pos_led5;
 wire [1:0] pos_led6;
 wire [1:0] pos_led7;
 wire [1:0] pos_led8;
 wire [1:0] pos_led9;
 wire [1:0] who;

 // Instantiate the Unit Under Test (UUT)
 tic_tac_toe_game uut (
  .clock(clock), 
  .reset(reset), 
  .play(play), 
  .player2_position(player2_position), 
  .player1_position(player1_position), 
  .pos1(pos_led1), 
  .pos2(pos_led2), 
  .pos3(pos_led3), 
  .pos4(pos_led4), 
  .pos5(pos_led5), 
  .pos6(pos_led6), 
  .pos7(pos_led7), 
  .pos8(pos_led8), 
  .pos9(pos_led9), 
  .who(who)
 );
 // clock
 initial begin
 clock = 0;
 forever #5 clock = ~clock;
 end
 initial begin
  // Initialize Inputs
$dumpfile("dumpfile.vcd");
$dumpvars(0,tb_tic_tac_toe);
  play = 0;
  reset = 1;
  player2_position = 0;
  player1_position = 0;
  #100;
  reset = 0;
  #100;
  play = 1;
  player1_position = 0;
  #50
  play=0;
  #100;
  play=1;
  player2_position = 1;  
  #50
  play=0;
  #100;
  play=1;
  player1_position =4 ;
  #50
  play=0;
  #100;
  play=1;
  player2_position =2 ;
  #50
  play=0;  
  #100;
  play=1;
  player1_position =8 ;
  #50
  play=0;
  #100;
  play=1;
  player1_position =3 ;
  #100;
  reset=1 ;
     
  end
      
endmodule
