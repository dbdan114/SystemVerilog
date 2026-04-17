module _nmos
(
  output wire outputData,
  input  wire inputData,
  input  wire Control
);
  assign outputData = (Control == 1'b1) ? inputData :
                      (Control == 1'b0) ? 1'bz :
                                          1'bx;
endmodule
