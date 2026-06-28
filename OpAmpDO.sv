`include "DigitSupply.vh"

module OpAmpDO
(
  inout wire V_Plus,
  inout tri input_Plus,
  output tri output_Plus,
  output tri output_Minus,
  inout tri input_Minus,
  inout wire V_Minus
);
  DifferentialQBit FetchV_Plus(V_Plus,input_Plus);
  DifferentialQBit FetchV_Minus(input_Minus,V_Minus);
  DifferentialQBit Fetchinput_Plus(input_Plus,output_Plus);
  DifferentialQBit Fetchinput_Minus(output_Minus,input_Minus);
  DifferentialQBit output_Plus_To_output_Minus(output_Plus,output_Minus);
  
endmodule
