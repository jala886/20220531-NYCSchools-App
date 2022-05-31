//
//  _0220531_jian_li_NYCSchoolsTests.swift
//  20220531-jian&li-NYCSchoolsTests
//
//  Created by jianli on 5/31/22.
//

import XCTest
@testable import _0220531_jian_li_NYCSchools

class _0220531_jian_li_NYCSchoolsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSchoolListViewModel() throws{
        if let testFileURL = Bundle.main.url(forResource: "schoolListData", withExtension: "json"){
            do{
                let data = try Data(contentsOf:testFileURL)
                let testSchoolViewModel = SchoolListViewModel(data:data)
                XCTAssert(testSchoolViewModel.schools.count == 100)
            }catch(let e){
                print(e.localizedDescription)
            }
        }else{
            print("cannot find test file: SchoolListData.html")
            XCTFail()
        }
    }
    func testSchoolSATViewModel() throws{
        if let testFileURL = Bundle.main.url(forResource: "schoolSATData", withExtension: "json"){
            do{
                let data = try Data(contentsOf:testFileURL)
                let testSchoolViewModel = SchoolListViewModel()
                testSchoolViewModel.loadSATData(data:data)
                XCTAssert(testSchoolViewModel.sats.count == 13)
            }catch(let e){
                print(e.localizedDescription)
            }
        }else{
            print("cannot find test file: SchoolListData.html")
            XCTFail()
        }
    }

}
