//
//  InputField.swift
//  MintaWang
//
//  Created by Cifran on 01/05/20.
//  Copyright © 2020 Cifran. All rights reserved.
//

import SwiftUI

struct CoinSingleSelect : View {
    var label: String = ""
    var image : String
    
    init(label: String, image: String) {
        self.label = label
        self.image = image
    }
    
    var body : some View {
        HStack(spacing: 10) {
            Image(self.image)
                .resizable()
                .frame(width: 30, height: 30)
                .aspectRatio(contentMode: .fit)
            Text(self.label).multilineTextAlignment(.trailing)
        }
    }
}
