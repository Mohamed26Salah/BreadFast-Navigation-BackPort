//
//  FullScreenSheet.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import SwiftUI

struct FullScreenSheet: View {
    @EnvironmentObject var navCoordinator: NavCoordinator

    var body: some View {
        Button {
            navCoordinator.dismissFullScreenCover()
        } label: {
            Text("Dismiss Full Screen Cover")
        }
    }
}

#Preview {
    FullScreenSheet()
}
