module example16;
    string d[1:5] = '{"a", "b", "c", "d", "e"};
    string p[];
    int dyna[], d2[];

    initial begin
        p = {d[1:3], "hello", d[4:5]};
        $display("p: %p\n", p);
    end

    initial begin
        dyna = new[5];
        foreach(dyna[j])
            dyna[j] = j;
        d2 = dyna; // first create d2 and then copy dyna to d2
        d2[0] = 5;
        $display("dyna[0]: %0d, d2[0]: %0d", dyna[0], d2[0]);
        $display("dyna: %p, d2: %p", dyna, d2);
        dyna = new[20](dyna); // in place copy
        $display("dyna: %p", dyna);
        dyna = new[10]; // delete all the previous data
        $display("dyna: %p", dyna);
        dyna.delete();
    end
endmodule
