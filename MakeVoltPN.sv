`include "DigitSupply.vh"

module MakeVoltPN
(
  output V_Plus,
  output V_Minus
);

  DifferentialQBit LinkVddVss(Vdd,Vss);
  DifferentialQBit MakeV_Minus(Vss,V_Minus);
  DifferentialQBit MakeV_Plus(V_Plus,Vdd);
endmodule
