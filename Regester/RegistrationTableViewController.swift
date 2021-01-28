//
//  TableViewController.swift
//  Regester
//
//  Created by amr  on 12/6/20.
//  Copyright © 2020 amr 25. All rights reserved.
//
import Foundation
import UIKit

class RegistrationTableViewController: UITableViewController {

    @IBOutlet weak var usernametextField: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var email: UITextField!
    
    private var regesterViewModel: RegesterViewModel!
    var selectedUserViewmodel : userViewModel!
        override func viewDidLoad() {
            super.viewDidLoad()
           
            self.usernametextField.text = self.selectedUserViewmodel.usernametextField
            self.lastname.text = self.selectedUserViewmodel.lastname
        }
        @IBAction func save() {
            self.regesterViewModel = RegesterViewModel(usernametextField: self.usernametextField.text!, password: self.password.text!, email: self.email.text!, lastname: self.lastname.text!)
            
            self.regesterViewModel.Save()
            
            
        }
        
    }

