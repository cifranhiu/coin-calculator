//
//  Coin.swift
//  MintaWang
//
//  Created by Cifran on 01/05/20.
//  Copyright © 2020 Cifran. All rights reserved.
//

import SwiftUI

struct Coin {
    let name : String
    let type : CoinType
    let image : String
    
    static func all() -> [Coin] {
        return [
            Coin(name: "BTC", type: .BTC, image: "coin_btc"),
            Coin(name: "ETH", type: .ETH, image: "coin_eth"),
            Coin(name: "XRP", type: .XRP, image: "coin_xrp"),
            Coin(name: "BCH", type: .BCH, image: "coin_bch"),
        ]
    }
}
