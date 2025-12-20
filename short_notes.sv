// Verification: testing a design whether it performs the desired task and
//               measuring it's response under different stimulus.
//               Here, we focus on constrained-random, assertion based and
//               coverage-driven verification.
//               
// Testbench: piece of code that is capable of generating a wide range of
//            input test vectors for DUT and observe it's response. 
//            
//            1. Generate Stimulus
//            2. Applying Stimulus to the DUT
//            3. Capture the response
//            4. Check for correctness
//            5. Measure the progress against the overall verification goals
//            6. Convert quantity into quality
//            
// ---> SV combines the HDL and HVL features in a single language.
//
// ---> #10 means a delay of 10ns (or whatever timescale is given) between the
//      instructions, whereas, the ##10 means a delay of 10 clock cycles, that
//      is 10 * (the total time period of the clock), for eg. 20ns i.e 200ns
//      of delay b/w the instructions. 
//
// ---> Simulation Cycle: everything the simulator does at one time 't', time
//      does not advance (active, nba, postponed..., regions at one single
//      time instant) 
//      Clock Cycle: one physical clock period, time advances. 
//
// ---> #1step advances the simulator by one delta cycle to allow non-blocking
//      assignments to complete without advancing time. 
//
// ---> A delta cycle is a zero-time simulation step used by the simulator to
//      order and settle events at the same simulation time. (time does not
//      advance, signal values can change (active, nba), exists only in
//      simulation).
//
// ---> Logic: a 4-state data-type in SV that can act like both reg and wire. 
//      Default: reg, can act as a singly driven wire too (not multiply driven
//      wire). A special data-type in SV. 
//      var logic -> reg 
//      wire logic -> singly driven wire
//      *** FPGA Synthesis: multiple drivers are not allowed. ***
//
// ---> 2-state variables: bit, byte, int, shortint, lognint (default: 0)
//
