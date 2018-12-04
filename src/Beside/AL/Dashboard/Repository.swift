//
//  Repository.swift
//  Beside
//
//  Created by wubaolai on 2018/12/4.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import Mapper

struct Repository: Mappable {

    let identifier: Int?
    let language: String?
    let name: String
    let url: String?

    init(map: Mapper) throws {
        identifier = map.optionalFrom("id")
        name = map.optionalFrom("name") ?? "无名氏😿"
        language = map.optionalFrom("language")
        url = map.optionalFrom("url")
    }
    
}
