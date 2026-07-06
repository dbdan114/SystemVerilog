`include "DigitSupply.vh"

module PostLNA
(
  inout tri OuterReceive,
  output tri InnerReceive,
  inout tri InnerTransmit,
  output tri OuterTransmit
);

  tri TempVss;
  tri TempVdd;
  
  DifferentialQBit CorrectTempVss
  (
    Vss,
    TempVss
  );
  DifferentialQBit FetchVss
  
  (
    TempVss,
    OuterReceive
  );
  DifferentialQBit FetchOuterReceive
  (
    OuterReceive,
    InnerReceive
  );
  DifferentialQBit FetchInnerReceive
  (
    InnerReceive,
    InnerTransmit
  );
  DifferentialQBit FetchInnerTransmit
  (
    InnerTransmit,
    OuterTransmit
  );
  DifferentialQBit FetchOuterTransmit
  (
    OuterTransmit,
    TempVdd
  );
  DifferentialQBit CorrectTempVdd
  (
    TempVdd,
    Vdd
  );
  
endmodule
