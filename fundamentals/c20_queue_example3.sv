module example20;
    int q[$] = {2, 4, 8};
    int p[$], pos = 1;
    int e[] = {1, 3, 5};
    initial begin
        $display("Initial, q: %p", q);
        q = {q, 6};
        $display("Append 6 to q, q: %p", q);
        q = {e, q};
        $display("Insert e to the beginning of q, q: %p", q);
        q = q[1:$];
        $display("Delete the first item, q: %p", q);
        q[0] = e[0];
        $display("\nq[0] = e[0], q: %p", q);
        p = q;
        $display("Copy q to p, p: %p", p);
        e[0] = q[0];
        $display("e[0] = q[0], e: %p", e);
        e[1] = q[$];
        $display("e[1] = q[$], e: %p", e);
        q = q[0:$-1];
        $display("\nDelete the last element of q, q: %p", q);
        q = q[1:$-1];
        $display("Delete first and last element of q, q: %p", q);
        q = {};
        $display("Emptying q, q: %p", q);
        q = {2, 4, 8};
        $display("\nNew q: %p", q);
        q = {q[0:pos-1], e[2], q[pos:$]};
        $display("Inserting e[2] at pos, q: %p", q);
        q = {q[0:pos], e[1], q[pos+1:$]};
        $display("Inserting e[1] after pos, q: %p", q);
    end
endmodule
