// SPDX-License-Identifier: MIT
pragma solidity 0.8.35;

// custom error with parameter
error OnlyAdmin(address sender, address admin);

contract CustomError {

    address public admin;

    constructor(address admin_) {
        admin = admin_;
    }

    // custom error and send bad address
    function checkCurstomError() external view {
        if(msg.sender != admin) revert OnlyAdmin(msg.sender, admin);
    }

}