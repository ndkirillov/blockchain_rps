// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title Rps
 * @dev rock-paper-scissors PvP contract
 */

contract Rps {
    uint256 public constant MIN_BET = 1;
    uint256 public constant MAX_BET = 10;
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
        require(msg.value > MIN_BET);
        require(msg.value < MAX_BET);
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
    
    //Encrypt move
    function encryptMove(){}
    
    //Store encrypted move and bet
    function store(){}
    
    //Create PvP
    function matchPlayers() {}

    //Decide who wins
    function winnerIs(){}

    //Make payment
    function payment() {}
}

