module PowerLNA
(
  output tri Receive,
  input tri EnableReceive,
  input tri Transmit,
  input tri EnableTransmit
);
  `include "DigitSupply.vh"
  tri TempJunction;
  tri NoConnect = Vss;
  
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
