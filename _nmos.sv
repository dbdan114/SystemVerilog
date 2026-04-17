module _nmos
(
  output wire outputData,
  input wire inputData,
  input wire Control
);
  always @(*)
  begin
    if(Control == 1'b1)
      outputData=inputData;
    else if(Control ==1'b0)
      outputData=1'bz;
    else
      outputData= 1'bx;
  end
endmodule
