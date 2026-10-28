`include "DigitSupply.vh"

module PowerLNA
(
  output tri Receive,
  input tri EnableReceive,
  input tri Transmit,
  input tri EnableTransmit
);

  tri V_Plus;
  tri V_Minus;

  tri ReceivedRadio;
  tri ReceivedNoise;
  
  tri TempJunction;
  tri NoConnect = Vss;

  tri TempReceive; 
  tri TempEnableReceive;
  tri TempTransmit;
  tri TempEnableTransmit;
  
  MakeVoltPN GetVoltPN
  (
    V_Plus,
    V_Minus
  );
  
  PowerAntenna GetInOutSignal
  (
    TempJunction
  );
  
  SplitRadio SplitNoise
  (
    V_Plus,
    TempJunction,
    ReceivedRadio,
    ReceivedNoise,
    V_Minus
  );
  
  DifferentialQBit DrainNoise
  (
    ReceivedNoise,
    NoConnect
  );
    
  LNA CheckSignal
  (
    TempReceive, 
    TempEnableReceive, 
    TempTransmit, 
    TempEnableTransmit, 
    TempJunction
  );  
endmodule


/*
module PowerLNA
(
  output tri Receive,
  input tri EnableReceive,
  input tri Transmit,
  input tri EnableTransmit
);

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
*/
