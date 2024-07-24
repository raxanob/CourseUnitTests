//
//  AccountBalanceSpec.swift
//  CourseUnitTestsTests
//
//  Created by Rayane Xavier on 24/07/24.
//

import XCTest
@testable import CourseUnitTests

final class AccountBalanceSpec: XCTestCase {
    var account: AccountBalance?
    
    func testGetSpecialBalance100() {
        account = AccountBalance(balance: 99)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 109, "O saldo menor que 100, deve retornar o saldo + 10")
    }
    
    func testGetSpecialBalance500() {
        account = AccountBalance(balance: 501)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 1501, "O saldo maior que 500, deve retornar o saldo + 1000")
        
        //last then - menor que
        //maior que
        XCTAssertGreaterThan(specialBalance ?? 0, (account?.balance ?? 0))
    }
    
    func testGetSpecialBalance400() {
        account = AccountBalance(balance: 400)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 400, "O saldo maior que 100 e menor que 500, deve retornar o saldo")
    }
}
