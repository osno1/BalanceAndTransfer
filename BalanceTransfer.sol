// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Addr {
    address public myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function receiveFunds() public payable { // Function that accepts funds

    }

    function transferTo(address targetAddr, uint amount) public { // Transferring money from the contract address to some address
        address payable _to = payable(targetAddr);
        _to.transfer(amount);
    }

    function getBalance (address targetAddr) public view returns(uint) { // The function allows you to find out the balance of the wallet
        return targetAddr.balance; // Command that returns a number/balance
    }
}
