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
  tri TempTransmit;
  
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
    EnableReceive, 
    TempTransmit, 
    EnableTransmit, 
    TempJunction
  );
  
  PostLNA CorrectSignal
  (
    TempReceive,
    Receive,
    Transmit,
    TempTransmit
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
