module example3;
    typedef enum {WAIT, LOAD, READY} state_t;
    state_t state, next_state;
    int foo;

    initial begin
        $display("Initial, current_state: %s = %0d", state.name, state);
        $display("Initial, next_state: %s = %0d", next_state.name, next_state);

        state = next_state;
        next_state = READY;
        $display("New, current_state: %s = %0d", state.name, state);
        $display("New, next_state: %s = %0d", next_state.name, next_state);

        foo = state + 1;
        $display("FOO: %0d", foo);

        // BUNCH OF ILLEGAL ASSIGNMENTS
        // state = foo + 1;
        // state = state + 1;
        // state++;
        // next_state += state;
    end
endmodule
