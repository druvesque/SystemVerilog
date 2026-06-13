program union_tb;
    typedef union packed {
        logic [3:0] a;
        byte b;
        bit [7:0] c;
    } my_data_union;

    my_data_union abc;
    initial begin
        abc.c = '{254};
        $display(abc);
        $display(" c = %d ", abc.c);
        abc.a = 123;
        $display(" a value is %d ", abc.a);
        $display(" b value is %d ", abc.b);
    end
endprogram
