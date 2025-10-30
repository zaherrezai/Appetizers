//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by user285702 on 23.10.25.
//

import SwiftUI

struct AppetizerDetailView: View {
    @Binding var isShowingDetail: Bool
    let appetizer: Appetizer
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity,maxHeight: 220)
            Spacer()
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40){
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carb", value: appetizer.carb)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                }
            }
            Spacer()
            Button{
                print("tapped")
            }label: {
                APButton(title: "\(appetizer.price, specifier: "%.2f") $ - Add to orders")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 60)
        .overlay(Button {
            isShowingDetail = false
        }label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(isShowingDetail: .constant(true), appetizer: MockData.sampleAppetizer)
}
struct NutritionInfo: View {
    let title: String
    let value: Int
    var body: some View {

        VStack(spacing: 5){
            Text("\(title)")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
            
            Text("\(value)")
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .italic()
        }
    }
}
