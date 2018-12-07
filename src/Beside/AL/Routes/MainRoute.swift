//
//  MainRoute.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import Foundation
import RxCoordinator

enum MainRoute: Route {
    case root
    
    func prepareTransition(coordinator: AnyCoordinator<MainRoute>) -> NavigationTransition {
        switch self {
        case .root:
            let rootVC = RootViewController()
            return .push(rootVC)
        }
    }
}
