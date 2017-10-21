//
//  ViewController.swift
//  Jeu de Nim
//
//  Created by Grégoire Jacquin on 19/03/2017.
//  Copyright © 2017 Grégoire Jacquin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ui_LabelPlayer: UILabel!
    @IBOutlet weak var ui_LabelNumBar: UILabel!
    @IBOutlet weak var ui_Button_1: UIButton!
    @IBOutlet weak var ui_Button_2: UIButton!
    @IBOutlet weak var ui_Button_3: UIButton!
    
    private var _game:Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newGame()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func newGame() {
        let p1 = Player(nickname:"Joueur 1")
        let p2 = Player(nickname:"Joueur 2")
        _game = Game(firstPlayer: p1, secondPlayer: p2)
    }
    
    @IBAction func reduceTheBar(_ sender: UIButton) {
        if let gameInProgress = _game {
            gameInProgress.pickMatchesCount(matchesCount: sender.tag)
        }
        updateLabel()
    }
    
    func updateLabel() {
        if let game = _game {
            ui_LabelPlayer.text = game.currentPlayer().nickname()
            if let winner = game.winner {
                ui_LabelNumBar.text = "Le \(winner.nickname()) a gagné"
            } else {
                ui_LabelNumBar.text = "Il reste \(game.matchesCount()) allumettes"
            }
            ui_Button_1.isHidden = game.matchesCount() < 1
            ui_Button_2.isHidden = game.matchesCount() < 2
            ui_Button_3.isHidden = game.matchesCount() < 3
        }
        
    }
}

