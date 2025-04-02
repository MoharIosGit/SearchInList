//
//  SearchInListTests.swift
//  SearchInListTests
//
//  Created by Mohar on 01/04/25.
//

import XCTest

@testable import SearchInList

final class SearchInListTests: XCTestCase {

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

    let fruits = ["Apple", "Banana", "Cherry", "Date", "Fig", "Grape", "Kiwi"]

        func testFilterWithEmptySearchText() {
            let result = FruitFilter.filter(fruits, by: "")
            XCTAssertEqual(
                result, fruits, "Empty search text should return all items.")
        }

        func testFilterWithMatchingSearchText() {
            let result = FruitFilter.filter(fruits, by: "ap")
            XCTAssertEqual(
                result, ["Apple", "Grape"], "Should match items containing 'ap'.")
        }

        func testFilterWithNoMatch() {
            let result = FruitFilter.filter(fruits, by: "zzz")
            XCTAssertTrue(
                result.isEmpty, "Should return an empty array for no matches.")
        }

        func testCaseInsensitiveSearch() {
            let result = FruitFilter.filter(fruits, by: "KiWi")
            XCTAssertEqual(result, ["Kiwi"], "Search should be case-insensitive.")
        }

}
