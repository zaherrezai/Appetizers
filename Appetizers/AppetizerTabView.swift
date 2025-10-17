//
//  ContentView.swift
//  Appetizers
//
//  Created by user285702 on 16.10.25.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            OrderView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Order")
                }
            
            AccountView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }
        }
        .accentColor(Color("brandprimary"))
    }
}

#Preview {
    AppetizerTabView()
}
