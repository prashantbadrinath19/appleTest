//
//  CustomCellTest.swift
//  NewsAppAssignmentTests
//
//  Created by Prashant  Badrinath on 6/10/20.
//  Copyright © 2020 Prashant  Badrinath. All rights reserved.
//

import XCTest

class CustomCellTest: XCTestCase {
    
    var mockCustomCellObj: MockCustomCell!
    override func setUpWithError() throws {
        mockCustomCellObj = MockCustomCell()
    }
    
    override func tearDownWithError() throws {
        mockCustomCellObj = nil
    }
    
    func testExample() throws {
        mockCustomCellObj.setData(title: "", author: "", image: "")
        XCTAssertTrue(mockCustomCellObj.setDataCalled)
    }
}


class MockCustomCell: CustomCellProtocol{
    var setDataCalled : Bool = false
    func setData(title: String, author: String, image: String) {
        setDataCalled = true
    }
}
