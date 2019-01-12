//
//  ShowingGameTableViewCell.swift
//  Julian_GameIntroductionApp
//
//  Created by Fumiya Tanaka on 2019/01/11.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class ShowingGameTableViewCell: UITableViewCell {

    @IBOutlet var gameNameLabel: UILabel!
    @IBOutlet var urlTextView: UITextView!
    
    var game: GameModel! {        
        didSet {
            gameNameLabel.text = game.gameName
            
            if let url = URL(string: game.urlString) {
                urlTextView.text = String(describing: url)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
