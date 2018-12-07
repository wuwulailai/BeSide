//
//  HomeViewModel.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import RxSwift
import Action
import RxCoordinator

protocol HomeViewModelInput {
}
protocol HomeViewModelOutput {
}

protocol HomeViewModel {
    var input: HomeViewModelInput { get }
    var output: HomeViewModelOutput { get }
}

class HomeViewModelImpl: HomeViewModel, HomeViewModelInput, HomeViewModelOutput {
    
    var input: HomeViewModelInput { return self }
    var output: HomeViewModelOutput { return self }
    
    // MARK: - Private
    private let coordinator: AnyCoordinator<HomeRoute>
    
    init(coodinator: AnyCoordinator<HomeRoute>) {
        self.coordinator = coodinator
    }
}
