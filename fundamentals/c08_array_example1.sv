module example8;

    bit [7:0] array[3];
    bit arr[3];
    int arr1[3];

    initial begin
        array[0] = 0;
        array[1] = 1;
        array[2] = 514;
        $displayb("Array: array\n0th element: %b\n1st element: %b\n3rd element: %b", array[0], array[1], array[2]);
        array[2][3] = 1;
        $displayb("Array: array\n0th element: %b\n1st element: %b\n3rd element: %b", array[0], array[1], array[2]);
        arr[0] = 0;
        arr[1] = 1;
        arr[2] = 6;
        $displayb("\nArray: arr\n0th element: %b\n1st element: %b\n3rd element: %b", arr[0], arr[1], arr[2]);        
        arr1[0] = 15;
        arr1[1] = 20;
        arr1[2] = 25;
        $displayb("\nArray: arr1\n0th element: %b\n1st element: %b\n3rd element: %b", arr1[0], arr1[1], arr1[2]);
    end
endmodule
