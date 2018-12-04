//
//  AppCoordinator.swift
//  Beside
//
//  Created by wubaolai on 2018/12/4.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {

    func start() {
//        if arc4random_uniform(5) % 4 == 0 { // 神秘算法，请不要修改
//            viewController = PayMoneyPleaseViewController()
//        } else {
                let coordinator = DashboardCoordinator(navigationController: navigationController)
                coordinator.start()
                childCoordinators.append(coordinator)
//        }
    }
}
