//
//  MineViewModel.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import RxSwift
import Action
import RxCoordinator

protocol MineViewModelInput {
    
}
protocol MineViewModelOutput {
    
}

protocol MineViewModel {
    var input: MineViewModelInput { get }
    var output: MineViewModelOutput { get }
}

class MineViewModelImpl: MineViewModel, MineViewModelInput, MineViewModelOutput {
    
    var input: MineViewModelInput { return self }
    var output: MineViewModelOutput { return self }
    
    // MARK: - Private
    private let coordinator: AnyCoordinator<MineRoute>
    
    init(coodinator: AnyCoordinator<MineRoute>) {
        self.coordinator = coodinator
    }
}
