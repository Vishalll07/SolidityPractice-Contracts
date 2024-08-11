// SPDX-License-Identifier: MIT
pragma solidity  0.8.25;

contract Counter {
    uint public count = 0;

    event Increment(uint value);
    event Decrement(uint value);

    function getCount() public view returns (uint) {
        return count; 
    }

    function increment() public {
        count += 1;
        emit Increment(count);
    }

    function decrement() public {
        require(count > 0, "Counter: decrement overflow");
        count -= 1;
        emit Decrement(count);
    }
}
