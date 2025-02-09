//
//  SmartScreenView.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import SwiftUI

struct SmartScreenView: View {
    @EnvironmentObject var navCoordinator: NavCoordinator
    @State private var popCount: String = ""

    var addName: String
    
    var body: some View {
        VStack {
            Text("My Name is Shop: \(addName)")

            Button {
                navCoordinator.push(.smartScreen(name: "Shops: \(addName)"))
            } label: {
                Text("Navigate to SmartScreen Again")
            }
            
            HStack {
                TextField("Enter pop count", text: $popCount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(width: 200)
                
                Button {
                    if let count = Int(popCount), count > 0 {
                        navCoordinator.pop(count: count)
                    }
                } label: {
                    Text("Pop \(popCount) Screens")
                        .padding(3)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }

            Button {
                navCoordinator.popToRoot()
            } label: {
                Text("Pop To Root")
            }
        }
    }
}

#Preview {
    SmartScreenView(addName: "Salah")
}
