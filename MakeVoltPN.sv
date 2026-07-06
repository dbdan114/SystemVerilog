`include "DigitSupply.vh"

module MakeVoltPN
(
  output V_Plus,
  output V_Minus
);

  DifferentialQBit LinkVddVss(rVdd,rVss);
  DifferentialQBit MakeV_Minus(rVss,V_Minus);
  DifferentialQBit MakeV_Plus(V_Plus,rVdd);
endmodule
