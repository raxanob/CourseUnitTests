//
//  AsyncProcessSpec.swift
//  CourseUnitTestsTests
//
//  Created by Rayane Xavier on 30/07/24.
//

import Quick
import Nimble
@testable import CourseUnitTests

class AsyncProcessSpec: QuickSpec {

    override func spec() {
        describe("Async Process") {
            context("callThatResultsInSideEffect") {
                
                it("Do Stuff") {
                    let asyncProcess = AsyncProcess()
                    waitUntil { done in
                        asyncProcess.doStuff { result in
                            expect(result).to(equal("Curso"))
                            done()
                        }
                    }
                }
                
                it("Test") {
                    let asyncProcess = AsyncProcess()
                    asyncProcess.callThatResultsInSideEffect()
                    expect(asyncProcess.name).toEventually(equal("Curso"))
                }
            }
        }
    }
}
