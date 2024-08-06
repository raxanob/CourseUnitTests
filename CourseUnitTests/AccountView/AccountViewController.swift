//
//  AccountViewController.swift
//  CourseUnitTests
//
//  Created by Rayane Xavier on 25/07/24.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.isHidden = false
            titleLabel.accessibilityIdentifier = "Titulo"
        }
    }
    var isHideen = false
    
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
        isHideen.toggle()
        titleLabel.isHidden = isHideen
    }
}

