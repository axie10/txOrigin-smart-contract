// SPDX-License-Identifier: MIT
pragma solidity 0.8.35;

import "./interface/IResultado.sol";

contract SumadorControlAcceso {

    address public direccionResultado;

    constructor(address direccion_) {
        direccionResultado = direccion_;
    }

    function addition(uint256 num1_, uint256 num2_) external {
        uint256 resultado = num1_ + num2_;
        IResultado(direccionResultado).setResultado(resultado);
    }

    // Cono modificador de funciones usando tx.origin
    function setFeeModifierTx(uint256 newFee_) external {
        IResultado(direccionResultado).setFeeModifierTx(newFee_);
    }
}
