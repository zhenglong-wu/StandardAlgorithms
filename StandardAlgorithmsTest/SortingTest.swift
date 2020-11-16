//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Wu, Zhenglong (SPH) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        
        //arrange
        let sorting = Sorting()
        let expected = [1, 4, 5, 6, 8, 9]
        //act
        let result = sorting.bubbleSort(data: [5, 4, 1, 8, 9, 6])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testBubbleSortWithVariousIntegerArraysReturnsEachOneSorted() {
    
        //arrage
        let sorting = Sorting()
        let testData = [(data: [6, 3, 1, 9, 2], expected: [1, 2, 3, 6, 9]),
                        (data: [1, 100, 4, 3, 15], expected: [1, 3, 4, 15, 100]),
                        (data: [], expected: [])]
        
        //act
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
}
