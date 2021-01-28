////
////  UsersTableViewController.swift
////  Regester
////
////  Created by amr  on 12/13/20.
////  Copyright © 2020 amr 25. All rights reserved.
////
import Foundation
import UIKit

class UsersTableViewController: UITableViewController {

    private var userlistviewmodel : userListViewModel!
    private var dataAccess: DataAccess!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataAccess = DataAccess()
        self.userlistviewmodel = userListViewModel(dataAccess: self.dataAccess)
        self.tableView.reloadData()


    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userlistviewmodel.UserViewModels.count
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexpath = (self.tableView.indexPathForSelectedRow)!
        let registerionTvc = segue.destination as! RegistrationTableViewController
     let userviewModel =  self.userlistviewmodel.UserViewModels[indexpath.row]
        registerionTvc.selectedUserViewmodel = userviewModel
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

       let userViewModel = self.userlistviewmodel.UserViewModels[indexPath.row]
          cell.textLabel?.text = "\(userViewModel.usernametextField!), \(userViewModel.lastname!)"
    return cell
    }
}



