//
//  HomeView.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var navCoordinator: NavCoordinator
    
    var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("🏠 Home Dashboard")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Manage and explore the app from here.")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer()
            
            // Navigation Button
            Button {
                navCoordinator.push(.smartScreen(name: "Navigated from Home View"))
            } label: {
                Text("➡️ Go to Smart Screen")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Home")
    }
}

#Preview {
    HomeView()
}
