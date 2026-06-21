module or_nB_to_A
(
  output tri outputData,
  input wire Logic0,
  input wire Logic1,
  input tri A,
  input tri B
);
  pmos For0
  (
    outputData,
    Logic1,
    B
  );
  nmos For1
  (
    outputData,
    A,
    B
  );
endmodule
