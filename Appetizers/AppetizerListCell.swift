//
//  SwiftUIView.swift
//  Appetizers
//
//  Created by user285702 on 16.10.25.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack{
            Image("PancakeStack")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 7){
                Text(appetizer.name)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Text("\(appetizer.price, specifier: "%.2f") $")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }.padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
