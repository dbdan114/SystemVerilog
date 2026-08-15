`include "DigitSupply.vh"

module PosEdge
(
  input  logic clk,
  input  logic rst_n,
  input  logic signal,
  output logic edge
);
  logic signal_d;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      signal_d <= 1'b0;
      edge     <= 1'b0;
    end else begin
      signal_d <= signal;
      edge     <= signal & ~signal_d;
    end
  end
