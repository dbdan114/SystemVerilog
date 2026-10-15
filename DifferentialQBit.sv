module DifferentialQBit(
    inout tri QBitN,
    inout tri QBitS
);
  `include "DigitSupply.vh"
  trireg DramNtoS;
  trireg DramStoN;
  pmos NtoS1
  (
    DramNtoS,
    QBitN,
    Vss
  );
  pmos StoN1
  (
    DramStoN,
    QBitS,
    Vss
  );

  pmos NtoS2
  (
    QBitS,
    DramNtoS,
    Vss
  );
  pmos StoN2
  (
    QBitN,
    DramStoN,
    Vss
  );
endmodule
