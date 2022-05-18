//
//  Text_TraderTests.swift
//  Text TraderTests
//
//  Created by Student Account on 4/28/20.
//  Copyright © 2020 Cascadia. All rights reserved.
//
import XCTest
@testable import Text_Trader

class Text_TraderTests: XCTestCase {
    var books = [Book]()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @available(iOS 15.0, *)
    func testExample() async {
        print("Tests running.")
        let controller = Text_Trader.Controller()
        books = await controller.getBooks()
        let answer = controller.testFunc()
        XCTAssert(books.count > 0)
        XCTAssertEqual(answer, "This is working")
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
