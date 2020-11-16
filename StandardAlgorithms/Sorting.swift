//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Wu, Zhenglong (SPH) on 13/11/2020.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var test = data
        var notSorted = true
        while notSorted == true {
            notSorted = false
            for i in 0...test.count-2{
                if test[i] > test[i+1]{
                    let temp = test[i+1]
                    test[i+1] = test[i]
                    test[i] = temp
                    notSorted = true
                }
            }
        }
        return test
    }
    
    func quickSort(_ data: inout [Int]) -> [Int] {
        return []
    }
    
}
