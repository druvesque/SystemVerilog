module example21;
    logic [63:0] asso_spar[*];
    // logic [63:0] indx = 1;
    int indx = 1;
    initial begin
        $display("\nInitializing");
        repeat(64) begin
            asso_spar[indx] = indx;
            $display("index: %0d, value: %0d", indx, asso_spar[indx]);
            indx = indx << 1;
        end
        // foreach (asso_spar[i]) ERROR 
        //     $display("asso_spar[%h] = %h", i, asso_spar[i]);

        $display("\n");
        if (asso_spar.first(indx)) begin
            do 
                $display("asso_spar[%0d] = %0d", indx, asso_spar[indx]);
            while (asso_spar.next(indx));
        end

        // asso_spar.first(indx);
        // asso_spar.delete(indx);
    end
endmodule
