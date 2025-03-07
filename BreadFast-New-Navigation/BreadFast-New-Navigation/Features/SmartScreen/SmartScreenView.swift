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

    var shopName: String
    
    var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("📍 You are in **\(shopName)**")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            // Navigation Button
            Button {
                navCoordinator.push(.smartScreen(name: "Shops: \(shopName)"))
            } label: {
                Text("➡️ Navigate to SmartScreen Again")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Divider()
            
            // Pop Count Input & Button
            VStack(spacing: 10) {
                Text("🔄 Go back multiple screens")
                    .font(.headline)
                
                HStack {
                    TextField("Enter number of screens", text: $popCount)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 150)
                    
                    Button {
                        if let count = Int(popCount), count > 0 {
                            navCoordinator.pop(count: count)
                        }
                    } label: {
                        Text("⬅️ Pop \(popCount) Screens")
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }
            
            Divider()
            
            // Pop to Specific View
            VStack(spacing: 10) {
                Button {
                    navCoordinator.pop(to: .shops)
                } label: {
                    Text("🏬 Pop to Shops (if exists)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button {
                    navCoordinator.popToRoot()
                } label: {
                    Text("🏠 Pop to Root")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

#Preview {
    SmartScreenView(shopName: "Salah")
}
