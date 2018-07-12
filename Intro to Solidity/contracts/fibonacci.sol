pragma solidity ^0.4.19;

contract Fibonacci {
    /* Carry out calculations to find the nth Fibonacci number */
    function fibRecur(uint n) public pure returns (uint) {
        // If n is one make it return initial value
        if ( n == 1 ) {
            return 1;
        } 
        // If n is 0, make it return "0th" value, is 0 in order to allow the second value of n to be 1
        else if ( n == 0 ) {
            return 0;
        }
        // If not the base cases, then recursively call previous cases
        else {
            return fibRecur( n - 1 ) + fibRecur ( n - 2 );
        }
    }

    /* Carry out calculations to find the nth Fibonacci number */
    function fibIter(uint n) public returns (uint) {
        // First fibonacci number before the function (n-1)
        uint num1;
        // Second fibonacci number before the function (n-2)
        uint num2;
        // Temporary variable to store values as they are changed
        uint temp;
        // Iterate through till the nth fibonacci number is reached
        for (uint i = 0; i < n; i++) {
            // Store num2 in temporary variable as it's changed in the next operation
            temp = num2;
            // Calculate the next fibonacci number
            num2 = num1 + num2;
            // Prevoius num2 is stored into num1 as it becomes the (n-2)th case
            num1 = temp;
        }
        return num2;
    }
}
