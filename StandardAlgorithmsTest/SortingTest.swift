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
    
    func testBubbleSortWithReversedIntegerArrayReturnsSortedArray() {
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        
        let result = sorting.bubbleSort(data: [9, 8, 7, 6, 5, 4, 3, 2, 1])
        
        XCTAssertEqual(result, expected)
    }
    
    func testInsertionSortWithIntegerArrayReturnsSortedArray() {
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6, 7, 8]
        
        let result = sorting.bubbleSort(data: [1, 8, 7, 5, 6, 4, 2, 3])
        
        XCTAssertEqual(result, expected)
        
    }
    
    func testInsertionSortWithVariousIntegerArraysReturnsEachOneSorted() {
        
        let sorting = Sorting()
        
        let testData = [(data: [6, 8, 2, 5, 7, 9], expected: [2, 5, 6, 7, 8, 9]),
                        (data: [1, 9, 8, 6, 0, 6, 7, 8, 3, 2], expected: [0, 1, 2, 3, 6, 6, 7, 8, 8, 9]),]
        
        for test in testData {
            let result = sorting.insertionSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testInsertionSortWithReversedIntegerArrayReturnsSortedArray() {
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        
        let result = sorting.insertionSort(data: [9, 8, 7, 6, 5, 4, 3, 2, 1])
        
        XCTAssertEqual(result, expected)
    }
    
    func testQuickSortWithIntegerArrayReturnsSortedArray() {
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6, 7, 8]
        
        let result = sorting.quickSort(data: [4, 8, 1, 2, 3, 6, 5, 7])
        
        XCTAssertEqual(result, expected)
    }
    
    func testQuickSortWithVariousIntegerArraysReturnsEachOneSorted() {
        
        let sorting = Sorting()
        
        let testData = [(data: [5, 8, 2, 3, 7, 9], expected: [2, 3, 5, 7, 8, 9]),
                        (data: [1, 9, 8, 6, 0, 6, 7, 8, 3, 2], expected: [0, 1, 2, 3, 6, 6, 7, 8, 8, 9]),]
        
        for test in testData {
            let result = sorting.quickSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testquiWithReversedIntegerArrayReturnsSortedArray() {
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        
        let result = sorting.quickSort(data: [9, 8, 7, 6, 5, 4, 3, 2, 1])
        
        XCTAssertEqual(result, expected)
    }
    
    func testMergeSortWithIntegerArrayReturnsSortedArray() {
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6]
        
        let result = sorting.mergeSort(data: [6, 1, 5, 2, 4, 3])
        
        XCTAssertEqual(result, expected)
    }
    
    func testMergeSortWithVariousIntegerArraysReturnsEachOneSorted() {
        
        let sorting = Sorting()
        
        let testData = [(data: [5, 8, 2, 3, 7, 9], expected: [2, 3, 5, 7, 8, 9]),
                        (data: [1, 9, 8, 6, 0, 6, 7, 8, 3, 2], expected: [0, 1, 2, 3, 6, 6, 7, 8, 8, 9]),]
        
        for test in testData {
            let result = sorting.quickSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testMergeSortWithReversedIntegerArrayReturnsSortedArray() {
        
        let sorting = Sorting()
        
        let expected = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        
        let result = sorting.mergeSort(data: [9, 8, 7, 6, 5, 4, 3, 2, 1])
        
        XCTAssertEqual(result, expected)
    }
    
    func testPerformanceForBubbleSortWith500Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...500{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.bubbleSort(data: data)
        }
    }
    
    func testPerformanceForBubbleSortWith50Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...50{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.bubbleSort(data: data)
        }
    }
    
    func testPerformanceForBubbleSortWith5Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...5{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.bubbleSort(data: data)
        }
    }
    
    func testPerformanceForMergeSortWith500Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...500{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.mergeSort(data: data)
        }
    }
    
    func testPerformanceForMergeSorttWith50Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...50{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.mergeSort(data: data)
        }
    }
    
    func testPerformanceForMergeSortWith5Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...5{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.mergeSort(data: data)
        }
    }
    
    func testPerformanceForInsertionSortWith500Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...500{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.insertionSort(data: data)
        }
    }
    
    func testPerformanceForInsertionSortWith50Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...50{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.insertionSort(data: data)
        }
    }
    
    func testPerformanceForInsertionSortWith5Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...5{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.insertionSort(data: data)
        }
    }
    
    func testPerformanceForQuickSortWith500Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...500{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.quickSort(data: data)
        }
    }
    
    func testPerformanceForQuickSortWith50Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...50{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.quickSort(data: data)
        }
    }
    
    func testPerformanceForQuickSortWith5Integers() {
        
        let sorting = Sorting()
        
        var data = [Int]()
        
        for _ in 1...5{
            data.append(Int.random(in: 1..<100))
        }
        
        measure {
            let _ = sorting.quickSort(data: data)
        }
    }
}

