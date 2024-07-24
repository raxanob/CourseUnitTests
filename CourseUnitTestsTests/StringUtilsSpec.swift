//
//  StringUtilsSpec.swift
//  CourseUnitTestsTests
//
//  Created by Rayane Xavier on 30/06/24.
//

import XCTest
@testable import CourseUnitTests

final class StringUtilsSpec: XCTestCase {
    
    func testRemoveWhiteSpace() {
        let text = "Ola mundo"
        let newTest = text.removeWhiteSpace()
        
        XCTAssertTrue(newTest == "Olamundo")
    }

    func testReplace() {
        let text = "text replace"
        let textReplace = text.replace(string: "e", replacement: "*")
        XCTAssertTrue(textReplace == "t*xt r*plac*")
    }
    
    func testIsValidEmail() {
        let email: String = "curso@gmail.com"
        let value = email.isValidEmail()
        XCTAssertFalse(value, "Nao é um email valido")
    }
    
}
