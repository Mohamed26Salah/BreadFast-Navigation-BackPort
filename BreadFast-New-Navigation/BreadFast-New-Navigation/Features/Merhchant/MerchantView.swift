//
//  MerchantView.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import SwiftUI

struct MerchantView: View {
    @EnvironmentObject var navCoordinator: NavCoordinator
    var body: some View {
        VStack {
            Text("This is Merchant Root View")
            Button {
                navCoordinator.push(.shops)
            } label: {
                Text("Navigate to Shops")
            }
            
            Button {
                navCoordinator.present(sheet: .bottomSheet)
            } label: {
                Text("Present Bottom Sheet")
            }

            
            Button {
                navCoordinator.present(fullScreenCover: .fullScreenView)
            } label: {
                Text("Full Screen View")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationTitle("Merchant")
    }
}

#Preview {
    MerchantView()
}
