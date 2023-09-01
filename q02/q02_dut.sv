`timescale 1ns/1ps

module q02_dut;

// Variables de Estimulo

logic a, b, c, d;

//Variables de Salida

logic q;


sistema dut(
    .A(a),
    .B(b),
    .C(c),
    .D(d),

    .Q(q)
);

initial begin
    a = 0;
    b = 0;
    c = 0;
    d = 0;


    repeat(16) begin
        #3
        a = $random;
        #3
        b = $random;
        #3
        c = $random;
        #3
        d = $random;
    end

    #10

    $finish;

end

endmodule