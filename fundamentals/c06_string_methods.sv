module string_methods;
    string s, a;
    initial begin
        s = "SystemVerilog";
        $display("%c", s.getc(0));
        $display(s.toupper());
        s = {s, "3.1b"};
        s.putc(s.len() - 1, "a");
        $display(s.substr(2, 5));
        my_log($psprintf("%s %5d", s, 42));
    end

    task my_log(string message);
        $display("@%0d: %s", $time, message);
    endtask
endmodule
