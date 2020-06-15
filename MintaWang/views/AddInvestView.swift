//
//  ContentView.swift
//  MintaWang
//
//  Created by Cifran on 01/05/20.
//  Copyright © 2020 Cifran. All rights reserved.
//

import SwiftUI

struct AddInvestView: View {
    @ObservedObject var viewRouter = ViewRouter()
    @State var presentInvestView: Bool = false
    
    
    let coins = Coin.all()
    @State private var result = InvestedMoney()
    @State private var coinIndex = 0
    
    var body: some View {
        NavigationView {
            Form {
                InputField(label: "Invest IDR", placeholder: "1000000", val: $result.fund)
                InputField(label: "IDR/coin Rate", placeholder: "5000", val: $result.buyRate)
                InputField(label: "Deposit Fee", placeholder: "0.02", val: $result.depositFee)
                InputField(label: "Withdraw Fee", placeholder: "0.2", val: $result.withdrawFee)
                
                Section {
                    Picker(selection: $coinIndex, label: Text("Coin")) {
                        ForEach(0 ..< self.coins.count) {
                            CoinSingleSelect(label: self.coins[$0].name, image: self.coins[$0].image)
                        }
                    }
                }
                
//                Section {
//
//                }
            }
            .navigationBarTitle(Text("Invest Wang"), displayMode: .inline)
        }
    }
}
