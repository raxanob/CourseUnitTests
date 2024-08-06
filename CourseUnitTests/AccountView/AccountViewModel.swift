//
//  AccountViewModel.swift
//  CourseUnitTests
//
//  Created by Rayane Xavier on 25/07/24.
//

import UIKit

protocol AccountViewModelProtocol {
    func loginButtonTap()
    func shoudRequestLocation(showAlert: () -> (),
                              askUserPermission: () -> (),
                              completion: () -> ())
    
    var instructionText: String { get }
    var status: String { get set }
}

class AccountViewModel {
    private let shouldUseLocation: Bool
    private let model: AccountModel
    private let provider: ProviderProtocol
    
    var status: String
    
    init(shoudUseLocation: Bool, model: AccountModel, provider: ProviderProtocol = Provider()) {
        self.shouldUseLocation = shoudUseLocation
        self.model = model
        self.provider = provider
        self.status = ""
    }
    
    func getJoke() {
        provider.getJoke { (result, error) in
            if error != nil {
                self.status = "Erro"
                return
            }
            self.status = result?[0] ?? ""
        }
    }
}

extension AccountViewModel: AccountViewModelProtocol {
    
    var instructionText: String {
        if shouldUseLocation {
            return model.instruction + " com localização"
        }
        return model.instruction
    }
    
    func loginButtonTap() {
        print("Login Realizado com sucesso")
    }
    
    func shoudRequestLocation(showAlert: () -> (), 
                              askUserPermission: () -> (),
                              completion: () -> ()) {
        if shouldUseLocation {
            askUserPermission()
            completion()
            return
        }
        
        showAlert()
        completion()
    }
}
