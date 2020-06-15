//
//  InputField.swift
//  MintaWang
//
//  Created by Cifran on 01/05/20.
//  Copyright © 2020 Cifran. All rights reserved.
//

import SwiftUI

struct InputField : View {
    var label: String
    var placeholder: String
    @Binding var val: Double?
    
    var body : some View {
        let styler = NumberFormatter()
        styler.numberStyle = .currency
        
        let someNumberProxy = Binding<String>(
            get: {
                if let val = self.val {
                    return styler.string(for: val) ?? ""
                }
                return ""
            },
            set: {
                if let value = styler.number(from: $0) {
                    self.val = value.doubleValue
                }
            }
        )
        
        return HStack(spacing: 10) {
            Text(self.label)
            Spacer()
            TextField(self.placeholder, text: someNumberProxy)
            .multilineTextAlignment(.trailing)
            .frame(width: 100, alignment: .trailing)
            .keyboardType(.decimalPad)
        }
    }
}
