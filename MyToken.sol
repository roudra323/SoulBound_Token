// SPDX-License-Identifier: unlicensed
pragma solidity ^0.8.10;

import "./ERC4671.sol";

contract MyToken is ERC4671{
   constructor (string memory name_, string memory symbol_) ERC4671(name_, symbol_) {
       require(bytes(name_).length > 0 && bytes(symbol_).length > 0 , "Name and Symbol is required.");
    }

    function CreatorAddr() public view returns(address) {
        return _creator;
    }

    function Mint(address owner) public {
        require(_isCreator(),"Only Contract creator has permission to mint.");
        _mint(owner);
    } 
}
