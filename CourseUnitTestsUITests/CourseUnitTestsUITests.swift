//
//  CourseUnitTestsUITests.swift
//  CourseUnitTestsUITests
//
//  Created by Rayane Xavier on 29/06/24.
//

import XCTest

final class CourseUnitTestsUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        //primeiro butao: app.buttons.firstMath
        //butao que o titulo seja login
        app.buttons["Login"]
        app.staticTexts["Titulo"]
        
        XCTAssertFalse(app.staticTexts["Titulo"].exists)
        app.buttons["Login"].tap()
        XCTAssertTrue(app.staticTexts["Titulo"].exists)
        app.buttons["Login"].tap()
        XCTAssertFalse(app.staticTexts["Titulo"].exists)

        // seguindo o titulo so
            //XCTAssertEqual(app.staticTexts["Titulo"].label, "Titulo")
        
        //dentro das subviews os botoes 
            //app.scrollViews.descendants(matching: .button)
        //ignora os botoes dentro das subviews
            //app.scrollViews.children(matching: .button)
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
