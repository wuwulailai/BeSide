//
//  HomeRoute.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import Foundation
import RxCoordinator

enum HomeRoute: Route {
    case home

    func prepareTransition(coordinator: AnyCoordinator<HomeRoute>) -> NavigationTransition {
        switch self {
        case .home:
            var homeVC = HomeViewController()
            let viewModel = HomeViewModelImpl(coodinator: coordinator)
            homeVC.bind(to: viewModel)
            return .push(homeVC)
        }
    }
}
