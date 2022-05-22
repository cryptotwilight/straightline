// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

import "@gnosis.pm/zodiac/contracts/core/Module.sol";

contract StraightLineModule is Module { 
  address public straightLine; 

  constructor(address _owner, address _straightLine) {
    bytes memory initializeParams = abi.encode(_owner, _straightLine);
    setUp(initializeParams);

  }
  /// @dev Initialize function, will be triggered when a new proxy is deployed
  /// @param initializeParams Parameters of initialization encoded
  function setUp(bytes memory initializeParams) public override initializer {
      __Ownable_init();
      (address _owner, address _straightLine) = abi.decode(initializeParams, (address, address));

      _straightLine = _straightLine;
      setAvatar(_owner);
      setTarget(_owner);
      transferOwnership(_owner);
  }

  function pushButton() external { 

      exec(straightLine, 0, abi.encodePacked(bytes4(keccak256("invest()"))), Enum.Operation.Call);
  }


}