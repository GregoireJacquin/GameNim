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
    
    
    
    var currentPlayer = "Joueur 1"
    
    var matchCount = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reduceTheBar(_ sender: UIButton) {
        matchCount -= sender.tag
        if currentPlayer == "Joueur 1" {
            currentPlayer = "Joueur 2"
        } else {
            currentPlayer = "Joueur 1"
        }
        updateLabel()
    }
    func updateLabel() {
        ui_LabelPlayer.text = currentPlayer
        if matchCount > 0 {
            ui_LabelNumBar.text = "Il reste \(matchCount) allumettes"
        } else {
            ui_LabelNumBar.text = "Le \(currentPlayer) a gagné"
        }
        ui_Button_1.isHidden = matchCount < 1
        ui_Button_2.isHidden = matchCount < 2
        ui_Button_3.isHidden = matchCount < 3
        
    }
}

