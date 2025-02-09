//
//  NavIdManager.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation
public extension String {
    func extractedStringBeforeParenthesis() -> String {
        if let index = self.firstIndex(of: "(") {
            return String(self.prefix(upTo: index))
        } else {
            return self
        }
    }
}
