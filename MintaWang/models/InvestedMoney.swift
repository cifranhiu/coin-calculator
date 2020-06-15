//
//  InvestedMoney.swift
//  MintaWang
//
//  Created by Cifran on 01/05/20.
//  Copyright © 2020 Cifran. All rights reserved.
//

import SwiftUI

struct InvestedMoney : Identifiable {
    var id: String = UUID().uuidString
    
    var profit : Double = 0
    
    var fund : Double?
    var buyRate : Double?
    var withdrawFee : Double? = 0.02
    var depositFee : Double? = 0.2
    var coin : Coin?
    
    var timestamp : Date = Date()
    var coinIndex : Int = 0
    
    init(timestamp: Date, fund: Double, profit: Double, coin : Coin) {
        self.fund = fund
        self.profit = profit
        self.timestamp = timestamp
        self.coin = coin
    }
    init() {
        
    }
}
