//
//  BindableType.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import Foundation
import UIKit

protocol BindableType {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    
    func bindViewModel()
}

extension BindableType where Self: UIViewController {
    
    mutating func bind(to model: Self.ViewModelType) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
    
}

extension BindableType where Self: UITableViewCell {
    
    mutating func bind(to model: Self.ViewModelType) {
        viewModel = model
        bindViewModel()
    }
    
}

extension BindableType where Self: UICollectionViewCell {
    
    mutating func bind(to model: Self.ViewModelType) {
        viewModel = model
        bindViewModel()
    }
    
}
