`include "DigitSupply.vh"

module MakeSDRtoDDR
(
  input tri Clock,
  output tri ClockP,
  output tri ClockN,
  inout tri Vplus,
  inout tri Vminus
);
  OpAmpDO MakeClockPN
  (
    Vplus,
    1'b1,
    ClockP,
    ClockN,
    Clock,
    Vminus
);
endmodule
