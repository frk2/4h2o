pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";  // OpenZeppelin package contains implementation of the ERC 20 standard, which our NFT smart contract will inherit
import "@openzeppelin/contracts/access/Ownable.sol";

contract AWOC is ERC20, Ownable {
    uint256 initial_supply = 10000;

    /* ERC 20 constructor takes in 2 strings, feel free to change the first string to the name of your token name, and the second string to the corresponding symbol for your custom token name */
    constructor() ERC20("WaterCredit", "AWOC") {
        _mint(msg.sender, initial_supply * 10^18);
        
    }

    function RewardWaterPurifier(address purifier, uint256 tokens) public onlyOwner {
        _mint(purifier, tokens * 10^18);
    }
}