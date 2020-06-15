//
//  TestData.swift
//  MintaWang
//
//  Created by Cifran on 01/05/20.
//  Copyright © 2020 Cifran. All rights reserved.
//

import Combine
import SwiftUI

class InvestedMoneyStore: ObservableObject {
    
    static let coins = Coin.all()
    static let a = InvestedMoney(timestamp: Date(), fund: 2500000, profit: 100000, coin: coins[0])
    static let b = InvestedMoney(timestamp: Date(), fund: 1000000, profit: 20000, coin: coins[1])
    static let c = InvestedMoney(timestamp: Date(), fund: 500000, profit: 20000, coin: coins[2])
    static let d = InvestedMoney(timestamp: Date(), fund: 5030000, profit: -30000, coin: coins[3])
    
    static func dummy() -> [InvestedMoney] {
        return [a,b,c,d].sorted { (a, b) -> Bool in
            a.profit > b.profit
        }
    }
    
    @Published var items : [InvestedMoney] = []
}
