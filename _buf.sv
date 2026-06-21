module _buf
(
  output tri outputData,
  input wire Logic0,
  input wire Logic1,
  input tri inputData
);
  _pmos For0
  (
    outputData,
    Logic0,
    inputData
  );
  _nmos For1
  (
    outputData,
    Logic1,
    inputData
  );
endmodule
