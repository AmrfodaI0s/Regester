//
//  DataAccess.swift
//  Regester
//
//  Created by amr  on 12/12/20.
//  Copyright © 2020 amr 25. All rights reserved.
//

import Foundation
class DataAccess {
    
 
        

     func getAllusers() -> [User] {


        var users = [User]()
        users.append(User(usernametextField: "ahmed", password: "password", email: "amrfoda50@gmail.com", lastname: "adel"))
       users.append(User(usernametextField: "joun", password: "password", email: "amrfoda13@gmail.com", lastname: "Foda"))
        users.append(User(usernametextField: "ali", password: "password", email: "amrfoda@gmail.com", lastname: "samy"))
        users.append(User(usernametextField: "ramy", password: "password", email: "medofoda@gmail.com", lastname: "mohamed"))



   return users
}
}
