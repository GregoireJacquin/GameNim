//
//  Game.swift
//  Jeu de Nim
//
//  Created by Grégoire Jacquin on 16/04/2017.
//  Copyright © 2017 Grégoire Jacquin. All rights reserved.
//

import Foundation

class Game {
    private var _currentPlayer:Player
    private let _player1:Player
    private let _player2:Player
    private var _matchesCount:Int = 20
    
    init(firstPlayer:Player, secondPlayer:Player) {
        _player1 = firstPlayer
        _player2 = secondPlayer
        _currentPlayer = firstPlayer
    }
    
    func matchesCount() -> Int {
        return _matchesCount
    }
    
    
    func pickMatchesCount(matchesCount:Int) {
        _matchesCount -= matchesCount
        if _currentPlayer === _player1 {
            _currentPlayer = _player2
        } else {
            _currentPlayer = _player1
        }
    }
    
    func isOver() -> Bool {
        return _matchesCount <= 0
    }
    
    func currentPlayer() -> Player {
        return _currentPlayer
    }
    
    var winner:Player? {
        if self.isOver() {
            return _currentPlayer
        } else {
            return nil
        }
    }
}
