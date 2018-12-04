//
//  DashboardCoordinator.swift
//  Beside
//
//  Created by wubaolai on 2018/12/4.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import UIKit

final class DashboardCoordinator: Coordinator {
    
    func start() {
        let viewController = DashboardViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
