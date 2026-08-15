module PosEdge
(
  input  tri Clock,
  output tri ClockEdge,
  input wire Logic0,
  input wire Logic1
);
  always_ff @(posedge Clock or Clock)
  begin
    if(posedge Clock)
    begin
      ClockEdge=Logic1;
    end
    else
    begin
      ClockEdge=Logic0;
    end
  end
  
  
endmodule
