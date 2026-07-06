module GetQDREdge
(
  output tri QDREdge,
  input tri ClockP,
  input tri ClockN
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
