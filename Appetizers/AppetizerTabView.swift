//
//  ContentView.swift
//  Appetizers
//
//  Created by user285702 on 16.10.25.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order : Order
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem{Label("Home", systemImage: "hause")}
            OrderView()
                .tabItem{Label("Orders", systemImage: "bag")}
                .badge(order.items.count)
            AccountView()
                .tabItem{Label("Account", systemImage: "person")}
        }
       
    }
}

#Preview {
    AppetizerTabView()
}
