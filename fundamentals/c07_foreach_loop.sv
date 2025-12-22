module foreach_loop;

    string words [2] = {"hello", "world"};
    int prod[1:8][1:3];

    initial begin
        foreach(words[j])
            $display("index: %0d, word: %s", j, words[j]);
        foreach(prod[k,m]) begin
            prod[k][m] = k*m;;
            $display("k: %0d, m: %0d, value: %0d", k, m, prod[k][m]);
        end
    end
endmodule
