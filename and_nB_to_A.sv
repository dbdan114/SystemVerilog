module and_nB_to_A
(
  output tri outputData,
  input wire [1:0] DigitSupply,
  input tri A,
  input tri B
);
  _pmos For0(outputData,A, B);
  _nmos For1(outputData,DigitSupply[0], B);
endmodule
