//
//  RegesterViewModel.swift
//  Regester
//
//  Created by amr  on 12/5/20.
//  Copyright © 2020 amr 25. All rights reserved.
//

import Foundation


class RegesterViewModel {
    
    var usernametextField: String
   var password: String
   var email: String
   var lastname: String
    
    init(usernametextField: String, password: String, email: String, lastname: String) {
        self.usernametextField = usernametextField
        self.password = password
        self.email = email
        self.lastname = lastname
    }
    func Save() {
        let user = User(Vm: self)
        //data access save(user)
    }
    
}
