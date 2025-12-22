module enum_methods;
    typedef enum {red, blue, green} colour;
    colour c;
    initial begin
        c = c.first();
        $display("c: %s = %0d", c.name, c);
        c = c.next();
        $display("c: %s = %0d", c.name, c);
        c = c.last();
        $display("c: %s = %0d", c.name, c);
        c = c.prev();
        $display("c: %s = %0d", c.name, c);
        $display("Number of enum values: %0d", c.num);
    end
endmodule
