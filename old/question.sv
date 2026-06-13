module Custom_clock (
    input [6:0] duty_cycle,
    output reg clock
);

initial begin

    clock = 1'b0;

    forever begin

        #(100-duty_cycle)
        clock = 1'b1;

        #(duty_cycle)
        clock = 1'b0;

    end

end

endmodule
////////////////////////////////////////// Custom_clock Test
module Custom_clock_tb();

reg [6:0] duty_cycle;
wire clock;

Custom_clock dut (.duty_cycle(duty_cycle) , .clock(clock));

initial 
    $monitor ("time=%t,duty_cycle = %d,clock=%b",$time,duty_cycle,clock);

initial begin 
         duty_cycle = 20;

    #500 duty_cycle = 70;

    #500 duty_cycle = 50;

    #500 $finish;
end 


endmodule 
