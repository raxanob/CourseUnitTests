//
//  StringUtilsTests.swift
//  CourseUnitTestsTests
//
//  Created by Rayane Xavier on 25/07/24.
//

import Quick
import Nimble
@testable import CourseUnitTests

class StringUtilsTests: QuickSpec {
    
    override func spec() {
        describe("StringUtils") {
            context("Is Valid Email") {
                it("Valid Email") {
                    let email = "curso@gmail.com"
                    let validEmail = email.isValidEmail()
                    expect(validEmail).to(beTrue())
                }
                
                it("Invalid Email") {
                    let email = "curso"
                    let invalidEmail = email.isValidEmail()
                    expect(invalidEmail).to(beFalse())
                }
            }
        }
    }
}
