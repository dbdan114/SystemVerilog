module xor_B_to_A
(
  output tri outputData,
  input wire Logic0,
  input wire Logic1,
  input tri A,
  input tri B
);
  tri TempNor;
  tri TempAnd;
    
  _nor #(.INPUT_WIDTH(2)) GetNor
  (
    TempNor,
    Logic0,
    Logic1,
    {B,A}
  );
  _and #(.INPUT_WIDTH(2)) GetAnd
  (
    TempAnd,
    Logic0,
    Logic1,
    {B,A}
  );
    
  _nor #(.INPUT_WIDTH(2)) GetXor
  (
    outputData,
    Logic0,
    Logic1,
    {TempNor,TempAnd}
  );
        
endmodule
