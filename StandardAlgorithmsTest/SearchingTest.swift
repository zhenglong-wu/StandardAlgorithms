//
//  SearchingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Zhenglong Wu on 17/11/2020.
//

import XCTest

class SearchingTest: XCTestCase {
    
    func testLinearSearchWithTargetReturnsBoolean() {
        
        let searching = Searching()
        
        let expected = true
        
        let result = searching.linearSearch(data: [1, 6, 8, 2, 7, 3, 4, 5], target: 5)
        
        XCTAssertEqual(result, expected)
        
    }
    
    func testLinearSearchWithoutTargetReturnsBoolean() {
        
        let searching = Searching()
        
        let expected = false
        
        let result = searching.linearSearch(data: [1, 6, 8, 2, 7, 3, 4, 5], target: 9)
        
        XCTAssertEqual(result, expected)
    }
    
    func testBinarySearchWithTargetReturnsBoolean() {
        
        let searching = Searching()
        
        let expected = true
        
        let result = searching.binarySearch(data: [1, 3, 7, 2, 7, 8, 23, 6, 26, 17, 9], target: 3)
        
        XCTAssertEqual(result, expected)
    }
    
    func testBinarySearchWithoutTargetReturnsBoolean() {
        
        let searching = Searching()
        
        let expected = false
        
        let result = searching.binarySearch(data: [1, 2, 6, 8, 3, 7 ,3, 7, 234, 457, 123, 347], target: 9)
        
        XCTAssertEqual(result, expected)
    }
}
