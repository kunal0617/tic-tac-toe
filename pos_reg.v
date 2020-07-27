module position_registers(
      input clock,  
      input reset,  
      input [8:0] PL2_en,
      input [8:0] PL1_en,
      output reg[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9
      );
 // Position 1 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos1 <= 2'b00;
  else begin
   if(PL2_en[0]==1'b1)
    pos1 <= 2'b10; // store computer data 
   else if (PL1_en[0]==1'b1)
    pos1 <= 2'b01;// store player data 
   else 
    pos1 <= pos1;// keep previous position
  end 
 end 
 // Position 2 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos2 <= 2'b00;
  else begin
   if(PL2_en[1]==1'b1)
    pos2 <= 2'b10; // store computer data 
   else if (PL1_en[1]==1'b1)
    pos2 <= 2'b01;// store player data 
   else 
    pos2 <= pos2;// keep previous position
  end 
 end  
// Position 3 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos3 <= 2'b00;
  else begin
   if(PL2_en[2]==1'b1)
    pos3 <= 2'b10; // store computer data 
   else if (PL1_en[2]==1'b1)
    pos3 <= 2'b01;// store player data 
   else 
    pos3 <= pos3;// keep previous position
  end 
 end  
 // Position 4 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos4 <= 2'b00;
  else begin
   if(PL2_en[3]==1'b1)
    pos4 <= 2'b10; // store computer data 
   else if (PL1_en[3]==1'b1)
    pos4 <= 2'b01;// store player data 
   else 
    pos4 <= pos4;// keep previous position
  end 
 end 
 // Position 5 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos5 <= 2'b00;
  else begin
   if(PL2_en[4]==1'b1)
    pos5 <= 2'b10; // store computer data 
   else if (PL1_en[4]==1'b1)
    pos5 <= 2'b01;// store player data 
   else 
    pos5 <= pos5;// keep previous position
  end 
 end 
 // Position 6 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos6 <= 2'b00;
  else begin
   if(PL2_en[5]==1'b1)
    pos6 <= 2'b10; // store computer data 
   else if (PL1_en[5]==1'b1)
    pos6 <= 2'b01;// store player data 
   else 
    pos6 <= pos6;// keep previous position
  end 
 end 
 // Position 7 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos7 <= 2'b00;
  else begin
   if(PL2_en[6]==1'b1)
    pos7 <= 2'b10; // store computer data 
   else if (PL1_en[6]==1'b1)
    pos7 <= 2'b01;// store player data 
   else 
    pos7 <= pos7;// keep previous position
  end 
 end 
 // Position 8 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos8 <= 2'b00;
  else begin
   if(PL2_en[7]==1'b1)
    pos8 <= 2'b10; // store computer data 
   else if (PL1_en[7]==1'b1)
    pos8 <= 2'b01;// store player data 
   else 
    pos8 <= pos8;// keep previous position
  end 
 end 
 // Position 9 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos9 <= 2'b00;
  else begin
   if(PL2_en[8]==1'b1)
    pos9 <= 2'b10; // store computer data 
   else if (PL1_en[8]==1'b1)
    pos9 <= 2'b01;// store player data 
   else 
    pos9 <= pos9;// keep previous position
  end 
 end  
endmodule 
