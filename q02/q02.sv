module sistema (
    input logic A,
    input logic B,
    input logic C,
    input logic D,

    output logic Q    
);

assign Q = (~A)&(~B)&(~C) | (~C)&(D) | (A)&(~B);

endmodule