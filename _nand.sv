module _nand
#(
  parameter int INPUT_WIDTH = 1
)
(
  output tri outputData,
  input wire Logic0,
  input wire Logic1,
  input tri [INPUT_WIDTH-1:0] inputData
);
  tri  [INPUT_WIDTH:0] Temp;
  
  nmos InitializeTo1
  (
    Temp[0],
    Logic0,
    Logic1
  );
  
  genvar Index;
  
  generate
    for(Index=0; Index < INPUT_WIDTH; Index = Index + 1)
    begin:Place_or_nB_to_A
      or_nB_to_A Paste
      (
        Temp[Index+1],
        Logic0,
        Logic1,
        Temp[Index],
        inputData[Index]
      );
    end
  endgenerate

  nmos ReturnValue
  (
    outputData,
    Temp[INPUT_WIDTH],
    Logic1
  );
endmodule
