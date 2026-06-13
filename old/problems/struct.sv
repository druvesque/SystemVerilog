program tb_struct;
    typedef struct packed {
        int a;
        byte b;
        bit [7:0] c;
    } my_data_struct;

    my_data_struct abc;
    initial begin
        abc = '{1234, 8'b10, 8'h20};
        $display(abc);
        $display(" a = %d, b = %d, c= %d ", abc.a, abc.b, abc.c);
        abc.a = 123;
        $display(" a value is %d ", abc.a);
        abc = '{a:1234, default: 8'h20};
        $display(abc);
    end
endprogram
