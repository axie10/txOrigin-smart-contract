// SPDX-License-Identifier: MIT
pragma solidity 0.8.35;

contract Resultado {
    
    uint256 public resultado;
    uint256 public fee;
    address public admin;

    modifier onlyAdminTx() {
        require(tx.origin == admin, "No eres el admin");
        _;
    }

    constructor(address admin_) {
        admin = admin_;
        fee = 5;
    }

    function setResultado(uint256 num_) external{
        resultado = num_;
    }

    // Cono modificador de funciones usando tx.origin
    function setFeeModifierTx(uint256 newFee_) external onlyAdminTx {
        fee = newFee_;
    }

}