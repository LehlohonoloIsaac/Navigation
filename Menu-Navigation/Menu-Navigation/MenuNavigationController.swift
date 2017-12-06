//
//  MenuNavigationController.swift
//  Menu-Navigation
//
//  Created by dvt on 2017/12/05.
//  Copyright © 2017 dvt. All rights reserved.
//

import UIKit

class MenuNavigationController: UIViewController {

    private var navigationView: MenuNavigationView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addMenuNavigationDrawer()
    }
    
    func addMenuNavigationDrawer() {
        navigationView = MenuNavigationView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        view.addSubview(navigationView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateScreen()
    }
    
    func updateScreen() {
        navigationView.onScreenOrientationChangeWith(newFrame: self.view.bounds)
        self.view.layoutIfNeeded()
    }
    
    @IBAction func onSlideNavigationDrawer(_ sender: Any) {
        print("onSlideNavigationDrawer clicked")
    }
}
