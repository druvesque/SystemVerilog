module example2;
    int x, y, z;
    logic [3:0] aa, bb;
    initial begin
        x = 1; y = 2; z = 3;
        x += y;
        $display("x: %d", x);
        x += (y += z);
        $display("x: %d, y: %d", x, y);
        --x;
        $display("x: %d", x);
        x = 1; y = 2; z = 3;
        x = y++;
        $display("x: %d, y: %d", x, y);
        x = y--;
        $display("x: %d, y: %d", x, y);
        x = --y;
        $display("x: %d, y: %d", x, y);

        aa = 4'b0101;
        bb = 4'b01xz;
        if (aa == bb)
            $display("yes, aa: %b, bb: %b are equal", aa, bb);
        if (aa === bb)
            $display("no, aa: %b, bb: %b are not equal", aa, bb);
        if (aa ==? bb) 
            $display("Bkl"); 
        if (aa !=? bb)
            $display("False");
        if (aa == 4'b01??)
            $display("lodu");
        aa = 4'b010z;
        bb = 4'b0101;
        if (aa ==? bb)
            $display("You were right");
    end
endmodule
