module _buf
(
  output tri outputData,
  input tri [1:0] DigitSupply,
  input tri inputData
);
  _pmos For0(outputData,DigitSupply[0],inputData);
  _nmos For1(outputData,DigitSupply[1],inputData);
    
endmodule
