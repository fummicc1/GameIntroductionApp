//
//  ViewController.swift
//  Julian_GameIntroductionApp
//
//  Created by Fumiya Tanaka on 2019/01/11.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit
import RealmSwift

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
            
            let game = GameModel()
            
            if let url = URL(string: urlStr) {
                game.urlString = url.absoluteString
            }
            
            game.gameName = name
            (UIApplication.shared.delegate as! AppDelegate).games.append(game)
            
            let realm = try! Realm()
            try! realm.write {
                realm.add(game)
            }
            
        }
        
    }

}

extension AddGameViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}


