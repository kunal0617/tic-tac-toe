module fsm_controller(
     input clock, 
     input reset,
     play,  
     no_space,  
     win,  
     output reg P2_play,  
     P1_play  
     );
 
parameter IDLE=2'b00;
parameter PLAYER1=2'b01;
parameter PLAYER2=2'b10;
parameter GAME_DONE=2'b11;
reg[1:0] current_state, next_state;
 
always @(*) 
begin 
 if(reset)
  current_state <= IDLE;
 else 
  current_state <= next_state;
end 
 
always @(play, no_space,win)
 begin
 case(current_state)
 IDLE: begin 
  if(play == 1'b1)
   next_state = PLAYER1; // player to play 
  else 
   next_state = IDLE;
  P1_play = 1'b0;
  P2_play = 1'b0;
 end 
 PLAYER1:begin 
 
  P1_play = 1'b1;
  P2_play = 1'b0;
  if(play==1'b1 && no_space==1'b0 && win==1'b0)
   next_state = PLAYER2; // computer to play 
  else if(play==1'b1 && win==1'b1)
   next_state = GAME_DONE;
  else
   next_state = PLAYER1;
 end 
 PLAYER2:begin 
 
  P1_play = 1'b0;
  P2_play = 1'b1;
  if(play==1'b1 && no_space==1'b0 && win==1'b0)
   next_state = PLAYER1; // computer to play 
  else if(play==1'b1 &&(win==1'b1 || no_space==1'b1))
   next_state = GAME_DONE;
  else
   next_state = PLAYER2;
 end 
 GAME_DONE:begin // game done
  P1_play = 1'b0;
  P2_play = 1'b0; 
  if(reset==1'b1) 
   next_state = IDLE;// reset the game to IDLE 
  else 
   next_state = GAME_DONE;  
 end 
 default: next_state = IDLE; 
 endcase
 end
endmodule 
