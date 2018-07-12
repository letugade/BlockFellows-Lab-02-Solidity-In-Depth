pragma solidity ^0.4.19;


contract Greeter {
    
    // Declaration of greeting string
    string private greeting;

    // Set initial greeting to "hello, World!"
    constructor() public {
        greeting = "hello, World!";
    }
    
    // Change the greeting that the function returns
    function setGreeting(string _greeting) public {
        greeting = _greeting;
    }

    // Get the greeting and return to greeter
    function greet() public view returns (string) {
        return greeting;
    }
}
