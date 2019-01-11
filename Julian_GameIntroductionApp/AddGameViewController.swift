//
//  ViewController.swift
//  Julian_GameIntroductionApp
//
//  Created by Fumiya Tanaka on 2019/01/11.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class AddGameViewController: UIViewController {

    @IBOutlet var urlTextField: UITextField!
    @IBOutlet var gameNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urlTextField.delegate = self
        gameNameTextField.delegate = self
    }

    @IBAction func tappedSavedButton() {
        
        if let name = gameNameTextField.text, let urlStr = urlTextField.text {
            
            let url = URL(string: urlStr)
            let game = GameModel()
            game.gameName = name
            game.url = url
            
            (UIApplication.shared.delegate as! AppDelegate).games.append(game)
        }
        
    }

}

extension AddGameViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}


