module example2;
    int x, y, z;
    logic [3:0] aa, bb;
    initial begin
        x = 1; y = 2; z = 3;
        $display("Initial, x: %0d, y: %0d, z: %0d", x, y, z);
        x += y;
        $display("x += y, x: %0d, y: %0d", x, y);
        x += (y += z);
        $display("x += (y += z), x: %0d, y: %0d, z: %0d", x, y, z);
        --x;
        $display("--x, x: %0d", x);
        
        x = 1; y = 2; z = 3;
        $display("\nNew, x: %0d, y: %0d, z: %0d", x, y, z);
        x = y++;
        $display("x = y++, x: %0d, y: %0d",x , y);
        x = ++y;
        $display("x = ++y, x: %0d, y: %0d", x, y);
        x = y--;
        $display("x = y--, x: %0d, y: %0d", x, y);
        x = --y;
        $display("x = --y, x: %0d, y: %0d", x, y);

        aa = 4'b0101; bb = 4'b01xz;
        $display("\nNew, aa: %b, bb: %b", aa, bb);

        if (aa == bb)
            $display("aa == bb, true");
        else
            $display("aa == bb, false");

        if (aa === bb)
            $display("aa === bb, true");
        else
            $display("aa === bb, false");

        if (aa ==? bb)
            $display("aa ==? bb, true");
        else
            $display("aa ==? bb, false");

        if (aa !=? bb)
            $display("aa !=? bb, true");
        else
            $display("aa !=? bb, false");

        if (aa == 4'b01??)
            $display("aa == 4'b01??, true");
        else 
            $display("aa == 4'b01??, false");

        aa = 4'b010z; bb = 4'b0101;
        $display("\nNew, aa: %b, bb: %b", aa, bb);

        $display("aa ==? bb: %0b", (aa ==? bb));

        if (aa ==? bb)
            $display("aa ==? bb, true");
        else 
            $display("aa ==? bb, false");
        
        if (aa !=? bb)
            $display("aa !=? bb, true");
        else
            $display("aa !=? bb, false");

        if (aa ==? bb || aa !=? bb)
            $display("Either aa ==? bb or aa !=? bb");
        else
            $display("In this case, the ==? or !=? operator is indeterminate!");

        x = 1; y = 0;
        $display("\nNew, x: %0d, y: %0d", x, y);
        y = x++ + x++;
        $display("y = x++ + x++, x: %0d, y: %0d", x, y);
    end
endmodule
