module example17;
    reg [7:0] mem [];
    initial begin
        $display("Setting array size to 4.");
        mem = new[4];
        $display("Initializing the array with default values");
        for (int i = 0; i < 4; i++) begin
            mem[i] = i;
        end
        $display("Doubling the size of the array with old content still valid.");
        mem = new[8](mem);
        $display("Current array size is %0d", mem.size());
        for (int i = 0; i < 8; i++) begin
            $display("Value at location %g: %0d", i, mem[i]);
        end
        $display("Deleting the array");
        mem.delete();
        $display("Current array size: %0d", mem.size());
        #1 $finish;
    end
endmodule
