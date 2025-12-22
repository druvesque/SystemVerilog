module example4;
    typedef enum {WAIT, LOAD, READY} state_t;
    state_t state = state.first();
    state_t next_state;

    initial begin
        state = state.next();
    end

    always @(state) begin
        $display("State: %s = %0d", state.name(), state);
        $display("Next State: %s = %0d", next_state.name(), next_state);
        case (state)
            WAIT: next_state = LOAD;
            LOAD: next_state = READY;
            READY: next_state = WAIT;
        endcase
        $display("Derived next state: %s = %0d", next_state.name(), next_state);
    end
endmodule
