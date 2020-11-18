//
//  SearchingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Zhenglong Wu on 17/11/2020.
//

import XCTest

class SearchingTest: XCTestCase {
    
    func testLinearSearchWithTargetInArray() {
        
        let searching = Searching()
        
        let expected = true
        
        let result = searching.linearSearch(data: [], target: 5)
        
        XCTAssertEqual(result, expected)
        
        
        
    }
}
