//
//  ViewController.swift
//  Jenga PRO
//
//  Created by Macbook on 28.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var game = Game()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func giveNumberButton(_ sender: UIButton) {
        game.giveNumberForBlock()
        updateViewFromModel()
    }
    
    func updateViewFromModel() {
        numberLabel.text = String(game.numberForBlock)
    }
    
    
}

