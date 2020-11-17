//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Wu, Zhenglong (SPH) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
    
        let sorting = Sorting()
        
        let expected = [1, 4, 5, 6, 8, 9]
        
        let result = sorting.bubbleSort(data: [5, 4, 1, 8, 9, 6])

        XCTAssertEqual(result, expected)
        
    }
    
    func testBubbleSortWithVariousIntegerArraysReturnsEachOneSorted() {
    
        let sorting = Sorting()
        
        let testData = [(data: [6, 3, 1, 9, 2], expected: [1, 2, 3, 6, 9]),
                        (data: [1, 100, 4, 3, 15], expected: [1, 3, 4, 15, 100]),]
        
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testInsertionSortWithIntegerArrayReturnsSortedArray(){
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6, 7, 8]
        
        let result = sorting.bubbleSort(data: [1, 8, 7, 5, 6, 4, 2, 3])
        
        XCTAssertEqual(result, expected)
        
    }
    
    func testInsertionSortWithVariousIntegerArraysReturnsEachOneSorted(){
        
        let sorting = Sorting()
        
        let testData = [(data: [6, 8, 2, 5, 7, 9], expected: [2, 5, 6, 7, 8, 9]),
                        (data: [1, 9, 8, 6, 0, 6, 7, 8, 3, 2], expected: [0, 1, 2, 3, 6, 6, 7, 8, 8, 9]),]
        
        for test in testData {
            let result = sorting.insertionSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testQuickSortWithIntegerArrayReturnsSortedArray(){
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6, 7, 8]
        
        let result = sorting.quickSort(data: [4, 8, 1, 2, 3, 6, 5, 7])
        
        XCTAssertEqual(result, expected)
    }
    
    func testQuickSortWithVariousIntegerArraysReturnsEachOneSorted(){
        
        let sorting = Sorting()
        
        let testData = [(data: [5, 8, 2, 3, 7, 9], expected: [2, 3, 5, 7, 8, 9]),
                        (data: [1, 9, 8, 6, 0, 6, 7, 8, 3, 2], expected: [0, 1, 2, 3, 6, 6, 7, 8, 8, 9]),]
        
        for test in testData {
            let result = sorting.quickSort(data: test.data)
            XCTAssertEqual(result, test.expected
)
        }
    }
}
