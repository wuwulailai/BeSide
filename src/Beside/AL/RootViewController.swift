//
//  RootViewController.swift
//  Beside
//
//  Created by wubaolai on 2018/12/7.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import UIKit

class RootViewController: BaseTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let homeVC = HomeViewController()
        let homeNav = BaseNavigationController(rootViewController: homeVC)
        homeNav.title = "主页"
        
        let mineVC = MineViewController()
        let mineNav = BaseNavigationController(rootViewController: mineVC)
        mineNav.title = "我的"
        
        self.viewControllers = [homeNav, mineNav]
    }
    
}
