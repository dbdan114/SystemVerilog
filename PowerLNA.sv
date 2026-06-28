`include "DigitSupply.vh"

module PowerLNA
(
  output Receive,
  input EnaleReceive,
  input Transmit,
  input EnableTransmit,
  input RfAntenna
);

  tri Receive;
  tri EnaleReceive;
  tri Transmit;
  tri EnableTransmit;

  tri TempJunction;
  
  PowerAntenna GetInOutSignal
  (
    TempJunction
  );

  DifferentialQBit
  (
    RfAntenna,
    TempJunction
  
  LNA CheckSignal
  (
    Receive, 
    EnaleReceive, 
    Transmit, 
    EnableTransmit, 
    TempJunction
  ); 
  
endmodule  
