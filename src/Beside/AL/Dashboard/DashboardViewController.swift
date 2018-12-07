//
//  DashboardViewController.swift
//  Beside
//
//  Created by wubaolai on 2018/12/4.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import UIKit
import RxSwift

class DashboardViewController: BaseViewController {

    private var viewModel: DashboardViewModelType!
    private let disposeBag = DisposeBag()
    
    convenience init(viewModel: DashboardViewModelType) {
        self.init()
        
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .red
    }
    
}
