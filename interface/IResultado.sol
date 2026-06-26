// SPDX-License-Identifier: MIT
pragma solidity 0.8.35;

interface IResultado {
    function setResultado(uint256 num_) external;
    function setFeeModifierTx(uint256 newFee_) external;
}