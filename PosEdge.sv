module PosEdge
(
  input  tri Clock,
  output logic ClockEdge,
  input wire Logic0,
  input wire Logic1
);
  always_ff @(posedge Clock)
  begin
    if(Logic1)
    begin
      ClockEdge=Logic1;
    end
  end

  always_ff @(Clock)
  begin
    if(Logic1)
    begin
      ClockEdge=Logic0;
    end
  end
  
  
endmodule
