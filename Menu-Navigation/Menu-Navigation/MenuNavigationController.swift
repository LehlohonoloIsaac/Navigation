//
//  MenuNavigationController.swift
//  Menu-Navigation
//
//  Created by dvt on 2017/12/05.
//  Copyright © 2017 dvt. All rights reserved.
//

import UIKit

class MenuNavigationController: UIViewController {

    @IBOutlet weak var navigationView: MenuNavigationView!
    var isNavigationDrawerVisible: Bool = false
    
    @IBOutlet weak var navigationDrawerLeadingConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateScreen()
        if isNavigationDrawerVisible {
            self.navigationDrawerLeadingConstraint.constant = 0
        } else {
            self.navigationDrawerLeadingConstraint.constant = -self.navigationView.width
        }
    }
    
    func updateScreen() {
        navigationView.onScreenOrientationChangeWith(newFrame: self.view.bounds)
        self.view.layoutIfNeeded()
    }
    
    @IBAction func onSlideNavigationDrawer(_ sender: Any) {
        print("onSlideNavigationDrawer clicked")
        if self.isNavigationDrawerVisible {
            self.navigationDrawerLeadingConstraint.constant = -self.navigationView.width
        } else {
            self.navigationDrawerLeadingConstraint.constant = 0
        }
        self.isNavigationDrawerVisible = !self.isNavigationDrawerVisible
    }
    
}
