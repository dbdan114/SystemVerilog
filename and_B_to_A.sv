module and_B_to_A
(
  output tri outputData,
  input wire Logic0,
  input wire Logic1,
  input tri A,
  input tri B
);
  _pmos For0
  (
    outputData,
    Logic0,
    B
  );
  _nmos For1
  (
    outputData,
    A,
    B
  );
  endmodule
