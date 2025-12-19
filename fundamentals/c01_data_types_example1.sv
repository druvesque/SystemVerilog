module example1;
    parameter SIZE = 10;
    reg [SIZE - 1:0] data;

    initial begin
        data = '0;
        $display("0: %b", data);
        data = 'z;
        $display("z: %b", data);
        data = 'x;
        $display("x: %b", data);
        data = '1; 
        $display("1: %b", data);
    end
endmodule
