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
        VStack {
            Text("This is Home Root View")
            Button {
                navCoordinator.push(.smartScreen(name: ""))
            } label: {
                Text("Navigate to Smart Screen")
            }
        }
        .navigationTitle("Home")
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    HomeView()
}
