// SPDX-License-Identifier: MIT
pragma solidity >=0.4.17 <0.8.14;

contract Migrations {
  address public user = msg.sender;
  uint public last_completed_migration;

  modifier restricted() {
    require(
      msg.sender == user
    );
    _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
