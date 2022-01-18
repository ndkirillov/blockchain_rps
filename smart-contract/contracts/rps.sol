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
    uint256 P2_bet;

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
        require(P1_bet > MIN_BET);
        require(P1_bet < MAX_BET);
        require(P1_bet == P2_bet);
        _;
    }

    // Register a game.
    function registerGame()
        public
        payable
        validBet
        returns (uint256)
    {
        if
    }
    
    //Store encrypted move
    function store(){
        storedAnswer = encryptedAnswer;
    }
    
    //Decide who wins
    function winnerIs(){
        Result result;

        if (moveP1 == moveP2)
        {
            result = Result.Draw;
        } else if (
                    (moveP1 == Moves.Rock     && moveP2 == Moves.Scissors) ||
                    (moveP1 == Moves.Paper    && moveP2 == Moves.Rock)     ||
                    (moveP1 == Moves.Scissors && moveP2 == Moves.Paper)
                )
        {
            result = Result.P1_Win;
        } else {
            result = Result.P2_Win;
        }
        reset();  // Reset game before paying to avoid reentrancy attacks
        payment();

        return result;
    }

    //Make payment
    function payment() {

    }

    function reset(){
        
    }
}

