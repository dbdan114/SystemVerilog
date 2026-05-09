module and_B_to_A
(
  output tri outputData,
  input tri [1:0] DigitSupply,
  input tri A,
  input tri B
);
  _pmos For0(outputData,DigitSupply[0], B);
  _nmos For1(outputData,A, B);
  endmodule
