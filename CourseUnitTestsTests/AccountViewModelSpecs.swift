//
//  AccountViewModelSpecs.swift
//  CourseUnitTestsTests
//
//  Created by Rayane Xavier on 25/07/24.
//

import Quick
import Nimble
@testable import CourseUnitTests

class AccountViewModelSpecs: QuickSpec {
        
    override func spec() {
        describe("Account View Model") {
            var sut: AccountViewModel!
            context("Shoud Request Location") {
                
                var showAlert: Bool!
                var askUserPermission: Bool!
                var completion: Bool!
                
                beforeEach {
                    showAlert = false
                    askUserPermission = false
                    completion = false
                }
                
                it("Use location true") {
                    sut = AccountViewModel(shoudUseLocation: true,
                                           model: AccountModel(instruction: ""))
                    
                    sut.shoudRequestLocation(
                        showAlert: {
                            showAlert = true
                        },
                        askUserPermission: {
                            askUserPermission = true
                        },
                        completion: {
                            completion = true
                    })
                    
                    expect(showAlert).to(equal(false))
                    expect(askUserPermission).to(equal(true))
                    expect(completion).to(equal(true))
                }
                
                it("Use location False") {
                    sut = AccountViewModel(shoudUseLocation: false,
                                           model: AccountModel(instruction: ""))
                    
                    sut.shoudRequestLocation(
                        showAlert: {
                            showAlert = true
                        },
                        askUserPermission: {
                            askUserPermission = true
                        },
                        completion: {
                            completion = true
                    })
                    
                    expect(showAlert).to(equal(true))
                    expect(askUserPermission).to(equal(false))
                    expect(completion).to(equal(true))
                }
                
                //Como nao e uma funcao que altera algo nao da para testar, esse e so vendo se passou pelo metodo
                //tem que alterar alguma variavel global, ou ter retorno
                it("loginButtonTap") {
                    sut = AccountViewModel(shoudUseLocation: false,
                                           model: AccountModel(instruction: ""))
                    expect(sut.loginButtonTap()).to(beVoid())
                }
            }
            
            context("AccountViewModelProtocol") {
                it("Verify AccountViewModelProtocol") {
                    sut = AccountViewModel(shoudUseLocation: false,
                                           model: AccountModel(instruction: ""))
                    expect(sut).to(beAKindOf(AccountViewModelProtocol.self))
                }
            }
            
            
            context("Instruction Text") {
                it("Verify using location") {
                    sut = AccountViewModel(shoudUseLocation: true,
                                           model: AccountModel(instruction: "Olá mundo"))
                    expect(sut.instructionText).to(equal("Olá mundo com localização"))
                }

                it("Verify not using location") {
                    sut = AccountViewModel(shoudUseLocation: false,
                                           model: AccountModel(instruction: "Olá mundo"))
                    expect(sut.instructionText).to(equal("Olá mundo"))
                }
            }
            
            context("Get Joke") {
                it("With Error") {
                    sut = AccountViewModel(shoudUseLocation: true,
                                           model: AccountModel(instruction: "Olá mundo"),
                                           provider: ProviderMock(status: .success))
                    sut.getJoke()
                    expect(sut.status).to(equal("1"))
                }

//                it("Verify not using location") {
//                    sut = AccountViewModel(shoudUseLocation: false,
//                                           model: AccountModel(instruction: "Olá mundo"))
//                    expect(sut.instructionText).to(equal("Olá mundo"))
//                }
            }
        }
    }
}
