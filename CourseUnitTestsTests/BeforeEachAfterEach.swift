//
//  BeforeEachAfterEach.swift
//  CourseUnitTestsTests
//
//  Created by Rayane Xavier on 25/07/24.
//


import Quick

class BeforeEachAfterEach: QuickSpec {
    override func spec() {
        describe("beforeEach and afterEach behaviour") {
            beforeEach {
               print(":) Describe before each")
            }
            
            context("some context") {
                beforeEach {
                    print(":/ context before each")
                }
                
                it("example 1") { print(":O example 1") }
                it("example 2") { print(":O example 2") }
                it("example 3") { print(":O example 3") }
                
                afterEach {
                    print(":/ context after each")
                }
            }

            
            context("another context") {
                beforeEach {
                    print(":| context before each")
                }
                
                it("example 1") { print(":P example 1") }
                it("example 2") { print(":P example 2") }
                
                afterEach {
                    print(":| context after each")
                }
            }
            
            afterEach {
                print(":( describe after each")
            }
        }
    }
    
}
