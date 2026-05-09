module _not
(
  output tri outputData,
  input tri [1:0] DigitSupply,
  input tri inputData
);
  _pmos For0(outputData,DigitSupply[1],inputData);
  _nmos For1(outputData,DigitSupply[0],inputData);
    
endmodule
