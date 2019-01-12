//
//  GameModel.swift
//  Julian_GameIntroductionApp
//
//  Created by Fumiya Tanaka on 2019/01/11.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation
import RealmSwift

class GameModel: Object {
    @objc dynamic var gameName: String = ""
    @objc dynamic var urlString: String = ""
}
