// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title Rps
 * @dev rock-paper-scissors PvP contract
 */

contract Rps {
    uint256 public constant BET = 1;
    uint256 P1_bet;

    enum Moves {
        Rock,
        Paper,
        Scissors
    }
    enum Result {
        P1_Win,
        P2_Win,
        Draw
    }

    address payable P1;
    address payable P2;

    bytes32 private encrMoveP1;
    bytes32 private encrMoveP2;

    Moves private moveP1;
    Moves private moveP2;

    modifier validBet() {
        require(msg.value == BET);
        _;
    }

    modifier notAlreadyRegistered() {
        require(msg.sender != P1 && msg.sender != P2);
        _;
    }

    // Register a player.
    function register()
        public
        payable
        validBet
        notAlreadyRegistered
        returns (uint256)
    {}

    //Create PvP
    function matchPlayers() {}

    //Make payment
    function payment() {}
}
