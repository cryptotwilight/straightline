// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/access/Ownable.sol";

contract StraighLine is Ownable {

    event DepositMade(address safe, uint256 amount);

    function invest()  public onlyOwner {

    }

}