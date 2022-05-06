// define the compiler version
pragma solidity ^0.8.10;

// start by creating a contract named Variables
contract Variables {
    /*
    **** state variables ****
	
    uint = unsigned integer
    uint8 ranges from 0 to 2^8 -1
    uint256 ranges from 0 to 2^256 -1

    `public` exposes variable to external world
    but can also be read internally

    */
    
    uint8 public u8 = 10;
    uint public u256 = 600;
    uint public u = 1230; // uint is an alias for uint256

    //Negative numbers are for int types.
    int public i = -123;

    //address is an ethereu  address
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // bool
    bool public defaultBoo1 = false;

    // default values
    // Unassigned variables will have default values
    bool public defaultBool2; //false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000

    function doSomething() public {
          /*
          **** Local Variable ****
          /*

          uint ui = 456;

          /*
          **** Global Variables ****

          block.timestamps is the timestamp for the current block.
          msg.sender is the address which called this function.
          */

          uint timestamp = block.timestamp; // current block timestamp
          address sender = msg.sender; // address of the caller

    }

}
