module example9;
    // bit [31:0] src[5], dst[5];
    initial begin
        bit [31:0] src[5], dst[5];                 // SV lets you declare in the initial block as well, Verilog does not
        for (int i = 0; i < $size(src); i++) begin
            src[i] = i;
            dst[i] = i*2;
            $display("i: %0b, src[%0d]: %0b, dst[%0d]: %0b", i, i, src[i], i, dst[i]);
        end
    end
endmodule
