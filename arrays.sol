pragma solidity ^0.8.10;

contract Arrays {
    // declare a string variable
    string public greeting = "Hello World";

    // several ways to initialize an array 
    // arrays initialized here are state variables
    // which means they are stored on the blockchain
    // these are called storage variables
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public fixedSizeArr;


    // get the index of arr
    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // return the entire array:
    // this function returns a uint[] memory.
    // memory means the value is only stored in memory,
    // not the blockchain. therefore, it only exists
    // during the time the function is being executed
    function getArr(uint[] memory _arr) public view returns (uint[] memory) {
        return _arr;
    }

    // return string memory
    // internally, strings work like arrays
    function foo() public returns (string memory) {
        return "C";
    }

    function doStuff(uint i) public {
        // append to array
        arr.push(i);

        // remove last element
        arr.pop();

        // get the length
        uint length = arr.length;

        // delete resets the value to default.
        // it does not change the length of the array.
        delete arr2[1];

        // creates an array in memory
        // must be fixed size
        uint[] memory array = new uint[](5);

        // create string in memory
        string memory hi = "hi";
    }

}
