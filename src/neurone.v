module neurone(
  input wire clk,
  input wire rst,
  input wire entree,
  input wire [5:0] poids,
  output reg [7:0] potentiel,
  output reg spike
);
always @(posedge clk) begin
  if(rst) begin
  potentiel <= 0;
  spike <= 0;
  end else if(potentiel >= 100) begin
  spike <= 1;
  potentiel <= 0;
  end else if(entree) begin
  spike <= 0;
  potentiel <= potentiel - (potentiel >> 4) + poids;
  end else begin
  spike <= 0;
  potentiel <= potentiel - (potentiel >> 4);
end
end
endmodule
