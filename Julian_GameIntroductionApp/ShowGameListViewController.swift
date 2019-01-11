//
//  ShowGameListViewController.swift
//  Julian_GameIntroductionApp
//
//  Created by Fumiya Tanaka on 2019/01/11.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class ShowGameListViewController: UIViewController {

    @IBOutlet var table: UITableView!
    
    var gameArray: [GameModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        gameArray = (UIApplication.shared.delegate as! AppDelegate).games
        table.reloadData()
    }
    
}

extension ShowGameListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ShowingGameTableViewCell
        cell.game = gameArray[indexPath.row]
        return cell
    }
    
}
