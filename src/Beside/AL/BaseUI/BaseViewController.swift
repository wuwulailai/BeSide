//
//  BaseViewController.swift
//  Beside
//
//  Created by wubaolai on 2018/12/5.
//  Copyright © 2018 wubaolai. All rights reserved.
//

import UIKit
import ReSwift
import RxSwift
import RxCocoa

class BaseViewController: UIViewController, StoreSubscriber {
    
    typealias StoreSubscriberStateType = AppState
    
    // MARK: - update state
    func newState(state: AppState) {
    }
    
    // MARK: - lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainStore.subscribe(self) { state in state }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mainStore.unsubscribe(self)
    }
    
}
