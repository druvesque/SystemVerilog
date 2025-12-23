module example12;

    bit [31:0] src[5] = '{0, 1, 2, 3, 4},
               dst[5] = '{5, 4, 3, 2, 1};
    bit [31:0] src1[5] = '{5{5}};
    bit [3:0][7:0] bytes;

    initial begin
        if (src == dst)
            $display("src == dst");
        else
            $display("src != dst");

        dst = src;
        src[0] = 5;
        if (src[1:4] == dst[1:4])
            $display("src[1:4] == dst[1:4]");
        else
            $display("src[1:4] != dst[1:4]");
        $display("\n");
    end

    initial begin
        $displayb("src1[0]: %0b\nsrc1[0][0]: %0b\nsrc1[2][2:1]: %0b\n", src1[0], src1[0][0], src1[2][2:1]);
    end
    initial begin
        bytes = 32'habcd_efab;
        $displayh("bytes: %0h\nbytes[3]: %0h\nbytes[3][7]: %0h\n", bytes, bytes[3], bytes[3][7]);
    end
endmodule
