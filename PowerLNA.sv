`include "DigitSupply.vh"

module PowerLNA
(
  output tri Receive,
  input tri EnableReceive,
  input tri Transmit,
  input tri EnableTransmit,
  inout tri NoConnect
);

  tri TempJunction;
  
  PowerAntenna GetInOutSignal
  (
    TempJunction
  );

  DifferentialQBit ConnectNC
  (
    NoConnect,
    TempJunction
  );
  
  LNA CheckSignal
  (
    Receive, 
    EnableReceive, 
    Transmit, 
    EnableTransmit, 
    TempJunction
  ); 
  
endmodule  
