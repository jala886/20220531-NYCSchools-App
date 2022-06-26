//
//  NYCSchoolsUITests.swift
//  NYCSchoolsUITests
//
//  Created by jianli on 6/25/22.
//

import XCTest

class NYCSchoolsUITests: XCTestCase {

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

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testSwitchBetween1And2() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        sleep(3)
        print("start debug UI Test")
        let tablesQuery = app.tables
        // jump to first school, this school no SAT Score
        tablesQuery.element(boundBy: 0).cells.element(boundBy: 1).tap()
        app.navigationBars.buttons["Back"].tap()
        // finished first ui test
        sleep(3)
        print("start click Web and return")
        tablesQuery.element(boundBy: 0).cells.element(boundBy: 2).tap()
        sleep(3) // for webkit loading
        app.webViews.webViews.webViews/*@START_MENU_TOKEN@*/.buttons["Submit your feedback"]/*[[".otherElements[\"Find a School - New York City Department of Education\"].buttons[\"Submit your feedback\"]",".buttons[\"Submit your feedback\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars.buttons["Back"].tap()
        
    }
}
