//
//  UnknownTest.swift
//  StandardAlgorithmsTest
//
//  Created by Wu, Zhenglong (SPH) on 18/11/2020.
//

import XCTest

class UnknownTest: XCTestCase {
    
    func testSumOfFirstAndLastWithIntegerArrayReturnsSum() {
    
        let unknown = Unknown()
        
        let expected = 9
        
        let result = unknown.sumOfFirstAndLast(data: [7, 5, 8, 3, 6, 8, 4, 8, 9, 2])
        
        XCTAssertEqual(result, expected)
    }
    
    func testSumOfFirstAndLastWithIntegerArrayLengthOneReturnsSum() {
        
        let unknown = Unknown()
        
        let expected = 16
        
        let result = unknown.sumOfFirstAndLast(data: [8])
        
        XCTAssertEqual(result, expected)
    }
    
    func testSumOfFirstAndLastWithIntegerArrayLengthZeroReturnsSum() {
        
        let unknown = Unknown()
        
        let expected = 0
        
        let result = unknown.sumOfFirstAndLast(data: [])
        
        XCTAssertEqual(result, expected)
    }
    
    func testModeOfSortedWithIntegerArrayReturnsModeInteger() {
        
        let unknown = Unknown()
        
        let expected = 9
        
        let result = unknown.modeOfSorted(data: [1, 2, 3, 4, 5, 5, 5, 5, 6, 7, 8, 9, 9, 9, 9, 9])
        
        XCTAssertEqual(result, expected)
    }
    
    func testModeOfUnsortedWithIntegerArrayReturnsModeInteger() {
        
        let unknown = Unknown()
        
        let expected = 4
        
        let result = unknown.modeOfUnsorted(data: [6, 2, 2, 8, 3, 4, 7, 8, 6, 4, 6, 4, 4, 4])
        
        XCTAssertEqual(result, expected)
    }
    
    func testSecondSmallestIntegerWithIntegerArrayReturnsSecondSmallestInteger() {
        
        let unknown = Unknown()
        
        let expected = 3
        
        let result = unknown.secondSmallestInteger(data: [2, 3, 3, 4, 5, 6, 7])
        
        XCTAssertEqual(result, expected)
    }
    
    func testGetDomainNameFromURLWithSingleURLReturnsDomainName(){
        
        let unknown = Unknown()
        
        let expected = "wfg"
        
        let result = unknown.getDomainNameFromURL(data: "www.wfg.org.uk")
        
        XCTAssertEqual(result, expected)
    }
}
