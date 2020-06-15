//
//  WangView.swift
//  MintaWang
//
//  Created by Cifran on 01/05/20.
//  Copyright © 2020 Cifran. All rights reserved.
//

import SwiftUI

struct MoneyView : View {
    let money : InvestedMoney
    
    let dateFormatterPrint = DateFormatter()
    
    var body : some View {
        dateFormatterPrint.dateFormat = "MMM dd"
        let timestampStr = dateFormatterPrint.string(from: money.timestamp)
        
        return HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 5) {
                Text("\(money.coin?.name ?? "") - \(timestampStr) ").font(.headline)
                Text("Fund = IDR \(money.fund ?? 0)").font(.caption)
            }
            Spacer()
            Text(money.profit > 0  ? "+\(money.profit)" : "\(money.profit)").font(.headline)
                .foregroundColor( money.profit > 0 ? .green : .red )
                .multilineTextAlignment(.trailing)
                .frame(width: 100, alignment: .trailing)
        }
    }
}
