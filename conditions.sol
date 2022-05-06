// define the compiler version
pragma solidity ^0.8.10;

// start by creating a contract named Variables
contract Conditions {
    // state variable to store a number
    uint8 public num;

    // public function - can be called from within 
    // the contract or externally

    function set(uint _num) public {
        num = _num;
    }

    // view function - doesn't change the state of
    // any variable and does not require gas.
    function get() public view returns (uint) {
        return num;
    }

    // if/else in solidity
    function foo(uint x) public returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    // loop
    function loop() public {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // skip to next iteration
                continue;
            }
            if (i == 5) {
                // exit loop
                break;
            }
        }
    }

}
