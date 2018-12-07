//
//  ViewModelType.swift
//  Beside
//
//  Created by wubaolai on 2018/12/6.
//  Copyright © 2018 wubaolai. All rights reserved.
//

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}
