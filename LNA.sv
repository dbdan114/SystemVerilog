module LNA
(
  output tri Receive,
  input tri EnableReceive,   // Approximately 2.1 V
  input tri Transmit,
  input tri EnableTransmit, // Approximately 2.1 V
  inout tri Antenna
);
  tri TempTranmit;
  tri TempReceive;

  _nmos ChargeTransmit(TempTranmit, Transmit, EnableTransmit);
  DifferentialQBit TransmitTemp(TempTranmit, Antenna);
  DifferentialQBit ReceiveTemp(Antenna, TempReceive);
  _nmos ChargeReceive(Receive, TempReceive, EnableReceive);
endmodule
