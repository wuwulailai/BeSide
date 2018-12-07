//
//  HomeViewController.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import UIKit
import RxSwift
import SnapKit

class HomeViewController: BaseViewController, BindableType {
    var viewModel: HomeViewModel!
    private let disposeBag = DisposeBag()
    
    // MARK: - View Life Cycle
   override func viewDidLoad() {
        super.viewDidLoad()
    
        log.debug("home page view loaded")
        title = "主页"
        view.addSubview(button)
        view.backgroundColor = .blue
    
        button.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalTo(200)
        }
    
    }
    
    // MARK: - BindableType
    
    func bindViewModel() {
        
    }
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("点击跳转", for: .normal)
        
        button.rx.tap.subscribe(onNext: { [weak self] in
            guard let `self` = self else {
                return
            }
            log.debug("tap Button : \(String(describing: self.button.currentTitle))")
        }).disposed(by: disposeBag)
        
        return button
    }()
}
