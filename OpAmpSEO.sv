`include "DigitSupply.vh"

module OpAmpSEO
(
  inout wire V_Plus,
  inout tri input_Plus,
  output output_Neutral,
  inout tri input_Minus,
  inout wire V_Minus
);
  DifferentialQBit FetchV_Plus(V_Plus,input_Plus);
  DifferentialQBit FetchV_Minus(input_Minus,V_Minus);
  DifferentialQBit Fetchinput_Plus(output_Neutral,input_Plus);
  DifferentialQBit Fetchinput_Minus(output_Neutral,input_Minus);
  
endmodule
