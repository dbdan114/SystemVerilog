module LNA
(
  output tri Receive,
  input tri EnableReceive,   // Approximately 2.1 V
  input tri Transmit,
  input tri EnableTransmit, // Approximately 2.1 V
  inout tri Antenna
);
  tri TempTransmit;
  tri TempReceive;

  nmos ChargeTransmit(TempTransmit, Transmit, EnableTransmit);
  DifferentialQBit TransmitTemp(TempTransmit, Antenna);
  DifferentialQBit ReceiveTemp(Antenna, TempReceive);
  nmos ChargeReceive(Receive, TempReceive, EnableReceive);
endmodule
