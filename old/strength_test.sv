`timescale 1ns/1ps

module tb;

    wire sig;

    reg weak_drv;
    reg strong_drv;

    string strength_str;

    // Weak driver
    assign (weak0, weak1) sig = weak_drv;

    // Strong driver
    assign (strong0, strong1) sig = strong_drv;

    always @(sig) begin

        strength_str = $sformatf("%v", sig);

        $display("------------------------------------------------");
        $display("TIME      = %0t", $time);
        $display("sig       = %b", sig);
        $display("strength  = %s", strength_str);

        // Detection logic

        if (strength_str == "We0")
            $display("Detected WEAK 0");

        else if (strength_str == "We1")
            $display("Detected WEAK 1");

        else if (strength_str == "St0")
            $display("Detected STRONG 0");

        else if (strength_str == "St1")
            $display("Detected STRONG 1");

        else if (strength_str == "Pu1")
            $display("Detected PULLUP 1");

        else
            $display("Unknown strength format");

    end


    initial begin

        $display("\n===== STARTING STRENGTH TEST =====\n");

        // -----------------------------------
        // CASE 1 : ONLY weak0 active
        // Expect -> We0
        // -----------------------------------
        force strong_drv = 1'bz;
        weak_drv = 0;

        #10;

        // -----------------------------------
        // CASE 2 : ONLY weak1 active
        // Expect -> We1
        // -----------------------------------
        weak_drv = 1;

        #10;

        // -----------------------------------
        // CASE 3 : strong0 overrides weak1
        // Expect -> St0
        // -----------------------------------
        release strong_drv;
        strong_drv = 0;
        weak_drv   = 1;

        #10;

        // -----------------------------------
        // CASE 4 : strong1 overrides weak0
        // Expect -> St1
        // -----------------------------------
        strong_drv = 1;
        weak_drv   = 0;

        #10;

        // -----------------------------------
        // CASE 5 : both strong/weak drive 1
        // Expect -> St1
        // -----------------------------------
        strong_drv = 1;
        weak_drv   = 1;

        #10;

        // -----------------------------------
        // CASE 6 : both strong/weak drive 0
        // Expect -> St0
        // -----------------------------------
        strong_drv = 0;
        weak_drv   = 0;

        #10;

        $display("\n===== TEST COMPLETE =====\n");

        $finish;
    end

endmodule
