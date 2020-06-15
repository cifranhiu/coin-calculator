//
//  ContentView.swift
//  MintaWang
//
//  Created by Cifran on 01/05/20.
//  Copyright © 2020 Cifran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewRouter = ViewRouter()
    @State var presentInvestView: Bool = false
    
    let moneyList = InvestedMoneyStore.dummy()
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(spacing:0) {
                    Form {
                        List {
                            ForEach(self.moneyList) { money in
                               MoneyView(money: money)
                            }
                        }
                    }
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "dollarsign.square")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(0)
                                .frame(width: 30, height: 30)
                                .foregroundColor(self.viewRouter.currentView == "home" ? .black : .gray)
                                .onTapGesture {
                                    self.viewRouter.currentView = "home"
                                }
                            
                            Spacer()
                            
                            ZStack {
                                Circle()
                                    .foregroundColor(Color.white)
                                    .frame(width: 60, height: 60)
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.blue)
                            }
                            .offset(y: -geometry.size.height/10/2)
                            .onTapGesture {
                                self.presentInvestView.toggle()
                            }
                            
                            Spacer()
                            
                            Image(systemName: "book")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(0)
                                .frame(width: 30, height: 30)
                                .foregroundColor(self.viewRouter.currentView == "history" ? .black : .gray)
                                .onTapGesture {
                                    self.viewRouter.currentView = "history"
                                }
                            
                            Spacer()
                        }.frame(width: geometry.size.width, height: geometry.size.height/12)
                            .background(Color.white.shadow(radius: 2).edgesIgnoringSafeArea(.bottom))
                        Spacer()
                    }.frame(width: geometry.size.width, height: geometry.size.height/8)
                }.edgesIgnoringSafeArea(.bottom)
            }
            .navigationBarTitle(Text("My Wang"))
            .sheet(isPresented: self.$presentInvestView) {
                AddInvestView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
