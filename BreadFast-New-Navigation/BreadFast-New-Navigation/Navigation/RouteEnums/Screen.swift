//
//  NavCoordinator.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation

public enum Screen {
    case home
    case merchant
    case smartScreen(name: String)
    case shops
}

extension Screen: Identifiable {
    public var id: String {
        return String(describing: self).extractedStringBeforeParenthesis()
    }
}

extension Screen: Equatable {
    public static func == (lhs: Screen, rhs: Screen) -> Bool {
        return lhs.id == rhs.id
    }
}

extension Screen: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

