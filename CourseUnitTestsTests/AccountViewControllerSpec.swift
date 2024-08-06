//
//  AccountViewControllerSpec.swift
//  CourseUnitTestsTests
//
//  Created by Rayane Xavier on 25/07/24.
//

import Quick
import Nimble
@testable import CourseUnitTests

class AccountViewModelMock: AccountViewModelProtocol {
    
    var status = ""
    
    var instructionText: String { return "" }
    
    var loginButtonHasBeenCalled = false
    
    func loginButtonTap() {
        loginButtonHasBeenCalled = true
    }
    
    func shoudRequestLocation(showAlert: () -> (), askUserPermission: () -> (), completion: () -> ()) {}
}

class AccountViewControllerSpec: QuickSpec {
        
    override func spec() {
        describe("AccountViewController") {
            var sut: AccountViewController!
            var sutMock: AccountViewModelMock!
            
            beforeEach {
                sutMock = AccountViewModelMock()
                sut = AccountViewController(nibName: "AccountViewController",
                                            bundle: nil)
                sut.viewModel = sutMock
            }
            
            context("action") {
                it("Login button tap") {
                    sut.loginButtonAction(UIButton())
                    expect(sutMock.loginButtonHasBeenCalled).to(beTrue())
                }
            }
        }
    }
}
