//
//  TableViewModel.swift
//  IikanjiScroll
//
//  Created by yoshiki-t on 2019/02/14.
//  Copyright © 2019 yoshiki-t. All rights reserved.
//

import Foundation
import ReactiveSwift
import ReactiveCocoa
import Result

class TableViewModel {
    
    let mailTextObserver: Disposable?
    
    init(signal: Signal<String?, NoError>) {
        
        //  <Observe Signal>
        mailTextObserver = signal.observeValues { text in
            
            guard let text = text else {
                return
            }
            
            print(text)
        }
        
    }
}
