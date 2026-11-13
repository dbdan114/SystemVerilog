`include "DigitSupply.vh"

module MakeDDRto2xSDR
(
  output tri Clock,
  input tri ClockP,
  input tri ClockN,
  input wire Logic0,
  input wire Logic1
);
  tri EdgeQDR;
  tri Weak2xSDR;
  GetQDREdge MakeEdgeQDR
  (
    EdgeQDR,
    ClockP,
    ClockN
  );
  DifferentialQBit MakeWeak2xSDR
  (
    Weak2xSDR,
    EdgeQDR
  );
  _buf MakeClock
  (
    Clock,
    Logic0,
    Logic1,
    Weak2xSDR
  );
endmodule
