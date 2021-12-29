//
//  SystemFeedManager.swift
//  TestNewsAPP
//
//  Created by Lwj on 2021/11/20.
//

import Foundation
import UIKit

class SystemThemeManager {
    static let shared = SystemThemeManager()
    
    private init() {}
    
    func handleTheme(darkmode: Bool, system: Bool) {
        
        guard !system else {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .unspecified
            return
        }
        
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = darkmode ? .dark : .light

    }
    
}
