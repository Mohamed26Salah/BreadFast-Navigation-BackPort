//
//  NavCoordinator.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation

public enum Sheet {
    case bottomSheet
}

extension Sheet: Identifiable {
    public var id: String {
        return String(describing: self).extractedStringBeforeParenthesis()
    }
}

extension Sheet: Equatable {
    public static func == (lhs: Sheet, rhs: Sheet) -> Bool {
        return lhs.id == rhs.id
    }
}

