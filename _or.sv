module _or
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
  
  nmos InitializeTo0
  (
    Temp[0],
    Logic0,
    Logic1
  );
  
  genvar Index;
  
  generate
    for(Index=0; Index < INPUT_WIDTH; Index = Index + 1)
    begin:Place_or_B_to_A
      or_B_to_A Paste
      (
        Temp[Index+1],
        Logic0,
        Logic1,
        Temp[Index],
        inputData[Index]
      );
    end
  endgenerate

  _buf ReturnValue
  (
    outputData,
    Logic0,
    Logic1,
    Temp[INPUT_WIDTH]
  );
    
endmodule
