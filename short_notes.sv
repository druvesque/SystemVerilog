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
//      At one time instant, let's say 't', the clock time reaches at t first,
//      then #1step of that time instant 't' is encountered, and then the
//      simulation cycle ends, so for 1 time instant, we can say that 
//      clock <= #1step <= simulation time (in the order of occurence in that
//      instant 't')
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
// ---> ++ & -- operators are treated as blocking assignment in SV.
//
// ---> Enum
//      1. No two elements can have the same value. 
//      2. Default type: int, default starting value: 0
//      3. 'x' is legal in the value, but the next state should either be
//         defined properly or keep the 'x' value states at the end of the enum
//
// ---> Enum Methods: first(), last(), next(), prev(), name(), num()
//                                                             (total enum val)
//
// ---> String
//      1. Default value: ""
//      2. Dynamic length
//      3. Not NULL terminated i.e doesn't end with '\0'
//
// ---> String Operations: {str1, str2} (concatenation), {N{str}} (replication),
//                         [index], ==, !=, >, <, >=, <= 
//
// ---> String Methods: len(), putc(), getc(), toupper(), tolower(), compare(),
//                      icompare(), substr(), atobin(), atooct(), atohex(),
//                      atoi(), atoreal(), realtoa(), bintoa(), octtoa(),
//                      itoa(), hextoa()
//
// ---> Loops
//      1. for: sv allows, non static (auto) storage of loop variables
//      2. while: conditional loop
//      3. do-while: executes atleast once
//      4. foreach: don't need to declare the iterator, automatically converts
//                  to for loop
//
//         Example of foreach iteration: int A[2][3][4], bit [3:0][2:1]B[5:1][4]
//                                       foreach(A[i][j][k]), foreach(B[q][r], ,[s])
//
// ---> Arrays
//      1. Out of bounds write is ignored, out of bounds read is return 'x'
//         for 4-state and 0 for 2-state.
//      2. Declared using '{} or '{n{}} notation
//      3. Two types of fixed size arrays, packed and unpacked
//      4. $size returns size of the array
//      5. int arr[4] is a shorthand of arr[0:3];
//      6. Contiguious memory allocation is used for both packed and unpacked arrays
//      7. When indexing mixed arrays, unpacked dimensions are referenced
//         first from left to right. Then packed dimensions are referenced
//         from left to right.
//
// ---> Array Tasks: $dimensions, $unpacked_dimensions, $left(word, 1),
//                   $right(word, 2), $low(word, 3), $high(word, 4)
//                   $size (i.e $high - $low + 1), $bits, $increment
//
// ---> Types of Arrays
//      1. Dynamic Arrays
//      2. Queues
//      3. Sparse / Associative Arrays
//      
