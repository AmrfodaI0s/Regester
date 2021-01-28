//
//  userListViewModel.swift
//  Regester
//
//  Created by amr  on 12/12/20.
//  Copyright © 2020 amr 25. All rights reserved.
//

import Foundation

class userListViewModel {
    var UserViewModels :[userViewModel] = [userViewModel]()
    private var dataAccess: DataAccess
    init(dataAccess :DataAccess)
    {
        self.dataAccess = dataAccess
        
        populateUsers()
    }
    private func populateUsers() {
      let users =  self.dataAccess.getAllusers()
        self.UserViewModels =  users.flatMap { user in
            return userViewModel(user: user)
            
            

    
            
        }
        
    }
}


class userViewModel {
    var usernametextField: String!
    var lastname: String!
    
    init(user: User) {
        self.usernametextField = user.usernametextField
        self.lastname = user.lastname
    }
}
