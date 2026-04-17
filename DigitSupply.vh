`ifndef DIGIT_SUPPLY_VH
`define DIGIT_SUPPLY_VH

supply0 Vss;
supply1 Vdd;
tri [1:0] SupplyDigit = {Vdd, Vss};
tri0 rVss;
tri1 rVdd;
tri [1:0] PullDigit = {rVdd, rVss};

`endif
