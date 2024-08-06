//
//  AccountViewController.swift
//  CourseUnitTests
//
//  Created by Rayane Xavier on 25/07/24.
//

import UIKit

class AccountViewController: UIViewController {
    
    var viewModel: AccountViewModelProtocol?
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        viewModel?.shoudRequestLocation(showAlert: {
            print("Alerta")
        }, askUserPermission: {
            print("Get user location")
        }, completion: {
            print("Completion")
        })
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        viewModel?.loginButtonTap()
    }
}
