module GetQDREdge
(
  output tri QDREdge,
  inout tri ClockP,
  inout tri ClockN
);
  DifferentialQBit ClockPtoEdge
  (
    ClockP,
    QDREdge
  );
  DifferentialQBit ClockNtoEdge
  (
    ClockN,
    QDREdge
  );
endmodule
