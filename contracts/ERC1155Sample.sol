// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract ERC1155Sample is ERC1155 {

    constructor() ERC1155("") {
        _mint(msg.sender, 0, 5, "");
        _mint(msg.sender, 1, 10, "");
        _mint(msg.sender, 2, 1, "");
        _mint(msg.sender, 3, 12, "");
        _mint(msg.sender, 4, 3, "");
    }
}