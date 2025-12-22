`timescale 1ns/100ps

module example10;
    byte a [0:1][0:2] = '{'{0, 1, 2}, '{3{8'h9}}};
    initial begin
        $display("a [0][0] = %0d", a[0][0]);
        $display("a [0][1] = %0d", a[0][1]);
        $display("a [0][2] = %0d", a[0][2]);
        $display("a [1][0] = %0d", a[1][0]);
        $display("a [1][1] = %0d", a[1][1]);
        $display("a [1][2] = %0d", a[1][2]);        
        #1 $finish;
    end
endmodule
