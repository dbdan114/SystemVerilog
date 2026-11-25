`include "DigitSupply.vh"

module Make1HzSDR
(
  output tri Clock1Hz,
  input wire VPlus,
  input wire VMinus,
  input wire Logic0,
  input wire Logic1
);
  tri Temp1Hz1;
  tri Temp1Hz2;

  OpAmpSEO MakeTemp1Hz1
  (
    VPlus,
    1'bx,
    Temp1Hz1,
    1'b0
    VMinus
  );

  DifferentialQBit MakeTemp1Hz2
  (
    Temp1Hz2,
    Temp1Hz1
  );
  
  _buf MakeClock1Hz
  (
    Clock1Hz,
    Logic0,
    Logic1,
    Temp1Hz2
  );

endmodule
