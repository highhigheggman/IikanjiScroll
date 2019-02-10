//
//  TableViewController.swift
//  IikanjiScroll
//
//  Created by yoshiki-t on 2019/02/11.
//  Copyright © 2019 yoshiki-t. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var AddressTextField: UITextField!
    @IBOutlet weak var PhoneTextField: UITextField!
    @IBOutlet weak var MailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // keyboard Type
        NameTextField.keyboardType = .asciiCapable
        AddressTextField.keyboardType = .asciiCapable
        PhoneTextField.keyboardType = .numberPad
        MailTextField.keyboardType = .emailAddress

    }

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 3
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // deselect
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
