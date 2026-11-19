module tt_um_noham_neurone (
  input  wire [7:0] ui_in,
  output wire [7:0] uo_out,
  input  wire [7:0] uio_in,
  output wire [7:0] uio_out,
  output wire [7:0] uio_oe,
  input  wire       ena,
  input  wire       clk,
  input  wire       rst_n
);

neurone n(.clk(clk), .rst(~rst_n), .entree(ui_in[0]), .poids(ui_in[6:1]), .potentiel(uo_out[7:0]), .spike(uio_out[0]));
assign uio_out[7:1] = 0;
assign uio_oe = 1;
endmodule
