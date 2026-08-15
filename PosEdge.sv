module PosEdge
(
  output logic ClockEdge,
  input  tri Clock,
  input wire Logic0,
  input wire Logic1
);
  tri LatchedClock;

  CellOfSRAM MakeLatch
  (
    LatchedClock,
    Logic1,
    Clock,
    Logic1,
    Logic0,
    Logic1
  );

  /*initial 
  begin 
    ClockEdge= Logic0;
  end*/
  
  always_ff @(posedge Clock)
  begin
    if(Logic1)
    begin
      ClockEdge=Logic1;
    end
  end

  always_ff @(posedge LatchedClock)
  begin
    if(Logic1)
    begin
      ClockEdge=Logic0;
    end
  end
  
  
endmodule
