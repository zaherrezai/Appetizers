//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by user285702 on 16.10.25.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizerList,){
              item in
                AppetizerListCell(appetizer: item)
            }
            .navigationTitle("🍟 Appetizers")
        }
        
    }
}

#Preview {
    AppetizerListView()
}
