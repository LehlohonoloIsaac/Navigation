//
//  MenuNavigationViewModel.swift
//  Menu-Navigation
//
//  Created by dvt on 2017/12/05.
//  Copyright © 2017 dvt. All rights reserved.
//

import Foundation
import UIKit

struct MenuNavigationViewModel {
    private var _navigationDrawerWidth: CGFloat!
    private var _navigationDrawerHeight: CGFloat!
    private var _customFrame: CGRect!
    private var _isLandscapeMode: Bool {
        if UIDevice.current.orientation.isLandscape {
            return true
        }
        return false
    }
    
    var isLandscapeMode: Bool {
        return self._isLandscapeMode
    }
    
    var navigationDrawerWidth: CGFloat {
        get { return self._navigationDrawerWidth}
        set { self._navigationDrawerWidth = newValue}
    }
    
    var navigationDrawerHeight: CGFloat {
        get { return self._navigationDrawerHeight}
        set { self._navigationDrawerHeight = newValue}
    }
    
    var customFrame: CGRect {
        get { return self._customFrame}
        set { self._customFrame = newValue}
    }
    
    mutating func updateFrame(with newFrame: CGRect, completed: @escaping () -> Void) {
        if isLandscapeMode {
            navigationDrawerWidth = newFrame.width/2
        } else {
            navigationDrawerWidth = newFrame.width/2 + newFrame.width/4
        }
        navigationDrawerHeight = newFrame.height
        customFrame = CGRect(x: 0, y: 0, width: navigationDrawerWidth, height: navigationDrawerHeight)
        completed()
    }
}
