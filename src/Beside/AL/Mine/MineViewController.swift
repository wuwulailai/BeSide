//
//  MineViewController.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import UIKit
import RxSwift

class MineViewController: BaseViewController, BindableType {

    var viewModel: MineViewModel!
    private let disposeBag = DisposeBag()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "我的"
        
        log.debug("mine page view loaded")
    }
    
    // MARK: - BindableType
    
    func bindViewModel() {
        
    }
}
