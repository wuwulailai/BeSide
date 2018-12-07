//
//  MineRoute.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import Foundation
import RxCoordinator

enum MineRoute: Route {
    case mine
    
    func prepareTransition(coordinator: AnyCoordinator<MineRoute>) -> NavigationTransition {
        switch self {
        case .mine:
            var mineVC = MineViewController()
            let viewModel = MineViewModelImpl(coodinator: coordinator)
            mineVC.bind(to: viewModel)
            return .push(mineVC)
        }
    }
}
