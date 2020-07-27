module tic_tac_toe_game(
     input clock,  
     input reset,  
     input play,  
     input [3:0] player2_position,player1_position, 
      
     output wire [1:0] pos1,pos2,pos3,
     pos4,pos5,pos6,pos7,pos8,pos9,
     
     output wire[1:0]who 
      
     );
 wire [15:0] PL2_en; 
 wire [15:0] PL1_en; 
 wire win;  
 wire P2_play;  
 wire P1_play;  
 wire no_space;  
     
  position_registers position_reg_unit(
      clock,  
      reset,  
      PL2_en[8:0],  
      PL1_en[8:0],  
      pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9
      );
  
 winner_detector win_detect_unit(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win,who);
  
 position_decoder pd1(player2_position,P2_play,PL2_en);
   
 position_decoder pd2(player1_position,P1_play,PL1_en); 
 
 nospace_detector nsd_unit(
   pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   no_space
    ); 
 fsm_controller tic_tac_toe_controller(
     clock,
     reset,
     play,  
     no_space,  
     win,  
     P2_play,  
     P1_play  
     );    
endmodule
