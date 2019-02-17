//
//  TableViewController.swift
//  IikanjiScroll
//
//  Created by yoshiki-t on 2019/02/11.
//  Copyright © 2019 yoshiki-t. All rights reserved.
//

import UIKit
import ReactiveSwift
import ReactiveCocoa

class TableViewController: UITableViewController {
    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var AddressTextField: UITextField!
    @IBOutlet weak var PhoneTextField: UITextField!
    @IBOutlet weak var MailTextField: UITextField!
    @IBOutlet weak var SendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView Setting
        self.tableView.allowsSelection = false
        self.tableView.separatorStyle = .none
        
        // Keyboard Setting
        NameTextField.keyboardType = .asciiCapable
        AddressTextField.keyboardType = .asciiCapable
        PhoneTextField.keyboardType = .numberPad
        MailTextField.keyboardType = .emailAddress
        
        // Notification
        addNotification()
        
        // Reactive
        //  <Send Signal>
        let mailTextSignal = MailTextField.reactive.continuousTextValues
        
        //  <Observe Signal>
        let mailTextObserver = mailTextSignal.observeValues { text in
            
            guard let text = text else {
                return
            }
            
            print(text)
        }
        
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
}

extension TableViewController {
    
    fileprivate func addNotification() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { notification in
            print("show Key")
        }
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification,object: nil, queue: nil) { notification in
            print("hide Key")
        }
    }
    
    fileprivate func removeNotification() {

    }
}
