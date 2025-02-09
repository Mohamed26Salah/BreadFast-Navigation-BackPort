//
//  NavCoordinator.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation
import SwiftUI
import NavigationBackport

public class NavCoordinator: ObservableObject {
    
    @Published public var path = NBNavigationPath()
    @Published public var sheet: Sheet?
    @Published public var fullScreenCover: FullScreenCover?
    
    public init() {}
    
    public func push(_ screen: Screen) {
        path.append(screen)
    }
    
    public func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    public func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    public func pop() {
        path.pop()
    }
    
    public func popToRoot() {
        path.popToRoot()
    }
    
    public func pop(count: Int) {
        guard count > 0 else { return }
        guard path.count >= count else { return }
        path.pop(count)
    }
    
    public func pop(to view: Screen) {
        path.popTo(view)
    }

    public func dismissSheet() {
        self.sheet = nil
    }
    
    public func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
}
