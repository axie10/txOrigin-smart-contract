// SPDX-License-Identifier: MIT
pragma solidity 0.8.35;

contract RequireSmartContract {

    address public admin;
    uint256 public num;

    modifier OnlyAdmin() {
        require(msg.sender == admin, "Deber ser admin.");
        _;
    }

    modifier OnlyAdminAndMayorNum(uint256 num1_) {
        require(num1_ > 5 && msg.sender == admin, "El numero debe ser mayor y deber ser admin.");
        _;
    }


    constructor(address admin_) {
        admin = admin_;
        num = 0;
    }

    function ifCondition() public view{
        if(msg.sender != admin) revert();
    }

    function checkRequire() public view {
        require(msg.sender == admin, "No eres el admin.");
    }

    function checkNumRequire (uint256 num1_) external {
        require(num1_ > 10 && msg.sender == admin, "El numero debe ser mayor y deber ser admin.");
        num = num1_;
    }

    function checkNumRequireModifierAdmin (uint256 num1_) external OnlyAdmin(){
        num = num1_;
    }

    function checkNumRequireModifier (uint256 num1_) external OnlyAdminAndMayorNum(num1_) {
        num = num1_;
    }
    
}