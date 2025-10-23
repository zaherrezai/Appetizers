//
//  Alert.swift
//  Appetizers
//
//  Created by user285702 on 21.10.25.
//


import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    let title : Text
    let message : Text
    let dismissButton : Alert.Button
}


struct AlertContext{
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                              message: Text("The data recived from server was invalid. Please contact support."),
                                              dismissButton: .default(Text("ok")))
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server. Please try again later."),
                                              dismissButton: .default(Text("ok")))
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server. if this persists, please contact support."),
                                              dismissButton: .default(Text("ok")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to compelete your request at this time. Please check yout internet connection."),
                                              dismissButton: .default(Text("ok")))
}
