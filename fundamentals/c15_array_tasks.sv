module example15;
    // typedef bit [3:0] memory [0:255] mem_t;
    bit [3:0] memory [0:255];
    bit [1:2][7:0] word [0:3][4:1];
    bit [3:0][7:0] array[0:255];
    int test[0:9][0:3];
    int d;
    bit [63:0] a;
    logic [63:0] b;
    wire [3:0][7:0] c [0:15];

    initial begin
        $display("Memory dimensions: %0d", $dimensions(memory));
        $display("Memory unpacked dimensions: %0d", $unpacked_dimensions(memory));
        // $display("Mem_t dimensions: %0d", $dimensions(abc));
        // $display("Mem_t unpacked dimensions: %0d", $unpacked_dimensions(abc));
        $display("\n$left(word, 1): %0d", $left(word, 1));
        $display("$left(word, 2): %0d", $left(word, 2));
        $display("$left(word, 3): %0d", $left(word, 3));
        $display("$left(word, 4): %0d", $left(word, 4));
        $display("\n$right(word, 3): %0d", $right(word, 3));
        $display("$right(word, 4): %0d", $right(word, 4));
        $display("\n$low(word, 1): %0d", $low(word, 1));
        $display("$low(word, 2): %0d\n", $low(word, 2));

        d = $dimensions(array);
        if (d > 0) begin
            for (int j = $right(array, 1); j >= $low(array, 1); j += $increment(array, 1)) begin
                $display("j: %0d", j);
            end
        end

        $display("\n$bits(a): %0d", $bits(a));
        $display("$bits(b): %0d", $bits(b));
        $display("$bits(c): %0d", $bits(c));
        $display("$bits(a) + $bits(b): %0d", $bits(a) + $bits(b));

        $display("\nSize of memory: %0d", $size(memory));
        $display("Size of test: %0d", $size(test));
    end
endmodule
