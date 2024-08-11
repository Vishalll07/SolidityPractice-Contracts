// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Counter {
  uint count;

  event increement(uint value);
  event decreement(uitn value);

  function increement()public{
count+=1;
exit increement(count);
  }
  function decreement() public{
    count -= 1;
    exit  decreement(count) ; }
}