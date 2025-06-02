module tt_um_alu (
    input  [7:0] ui_in,     // A[3:0], B[3:0]
    output [7:0] uo_out,    // Resultado
    input  [7:0] uio_in,    // Selector [2:0]
    output [7:0] uio_out,   // Flags (no usados)
    output [7:0] uio_oe,    // Habilitación de salida
    input clk,
    input rst_n
);
    wire [3:0] A = ui_in[3:0];
    wire [3:0] B = ui_in[7:4];
    wire [2:0] sel = uio_in[2:0];

    wire [7:0] Y;

    alu_8bit alu_inst (
        .A({4'b0000, A}),
        .B({4'b0000, B}),
        .sel(sel),
        .Y(Y)
    );

    assign uo_out = Y;
    assign uio_out = 8'b00000000;
    assign uio_oe = 8'hFF;
endmodule
