//
//  AppState.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation

public enum Tab: String, CaseIterable {
    case home = "home"
    case merchant = "merchant"
}


public class AppState: ObservableObject {
    @Published public var selectedTab = Tab.home{
        willSet{
            if(selectedTab == newValue){
                resetTab()
            }
        }
    }
    
    public static var resetToHomeTab = false
    public var homeCoordinator: NavCoordinator?
    public var merchantCoordinator: NavCoordinator?
        
    public init() {
        
    }
}


//MARK: - Handle App Tab Bar -

extension AppState {
    public func resetTab(){
        switch selectedTab{
        case Tab.home:
            if let homeCoordinator = homeCoordinator{
                homeCoordinator.popToRoot()
            }
        case Tab.merchant:
            if let merchantCoordinator = merchantCoordinator{
                merchantCoordinator.popToRoot()
            }
        }
    }
}

