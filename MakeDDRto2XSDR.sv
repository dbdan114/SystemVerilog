`include "DigitSupply.vh"

module MakeDDRto2XSDR
(
  output tri Clock,
  input tri ClockP,
  input tri ClockN,
  input wire Logic0,
  input wire Logic1
);
  tri EdgeQDR;
  tri Weak2XSDR;
  GetQDREdge MakeEdgeQDR
  (
    EdgeQDR,
    ClockP,
    ClockN
  );
  DifferentialQBit MakeWeak2xSDR
  (
    Weak2XSDR,
    EdgeQDR
  );
  _buf MakeClock
  (
    Clock,
    Logic0,
    Logic1,
    Weak2XSDR
  );
endmodule
