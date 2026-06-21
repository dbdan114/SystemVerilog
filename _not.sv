module _not
(
  output tri outputData,
  input wire Logic0,
  input wire Logic1,
  input tri inputData
);
  pmos For0
  (
    outputData,
    Logic1,
    inputData
  );
  nmos For1
  (
    outputData,
    Logic0,
    inputData
  );
endmodule
