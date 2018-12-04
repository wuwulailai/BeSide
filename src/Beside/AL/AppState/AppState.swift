//
//  AppState.swift
//  Beside
//
//  Created by wubaolai on 2018/12/4.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    var isLoading: Bool = false
    var errorMessage: String?
    var property: PropertyState
}

struct PropertyState {
    var properties: [PropertyDetail]?
}

struct PropertyDetail {
    var title: String
    var imgUrl: String
    var description: String
}
