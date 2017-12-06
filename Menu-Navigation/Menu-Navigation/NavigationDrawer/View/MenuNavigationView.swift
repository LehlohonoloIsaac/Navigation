//
//  MenuNavigationView.swift
//  Menu-Navigation
//
//  Created by dvt on 2017/12/05.
//  Copyright © 2017 dvt. All rights reserved.
//

import UIKit

class MenuNavigationView: UIView {

    @IBOutlet var contentView: UIView!
    private var navigationDrawerWidth: CGFloat!
    private var navigationDrawerHeight: CGFloat!
    private var customFrame: CGRect!
    private var menuNavigationViewModel: MenuNavigationViewModel!
    private var isLandscapeMode: Bool {
        if UIDevice.current.orientation.isLandscape {
            return true
        }
        return false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUpViews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    var width: CGFloat {
        return self.menuNavigationViewModel.navigationDrawerWidth
    }
    
    var height: CGFloat {
        return self.menuNavigationViewModel.navigationDrawerHeight
    }
    
    private func setUpViews() {
         self.menuNavigationViewModel = MenuNavigationViewModel()
        let nib = UINib(nibName: "MenuNavigationView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        self.menuNavigationViewModel.updateFrame(with: bounds) { [unowned self] in
            DispatchQueue.main.async {
                self.contentView.frame = self.menuNavigationViewModel.customFrame
            }
        }
        addSubview(contentView)
    }

    func onScreenOrientationChangeWith(newFrame: CGRect) {
        self.menuNavigationViewModel.updateFrame(with: newFrame) { [unowned self] in
            DispatchQueue.main.async {
                self.contentView.frame = self.menuNavigationViewModel.customFrame
            }
        }
    }
}
