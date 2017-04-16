//
//  Player.swift
//  Jeu de Nim
//
//  Created by Grégoire Jacquin on 16/04/2017.
//  Copyright © 2017 Grégoire Jacquin. All rights reserved.
//

import Foundation

class Player {
    private let _nickname:String
    
    init(nickname:String) {
        _nickname = nickname
    }
    func nickname() -> String {
        return _nickname
    }
}
