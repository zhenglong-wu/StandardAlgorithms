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
    
    func insertionSort(data: [Int]) -> [Int] {
        var test = data
        for index in 1..<test.count{
            var currentIndex = index
            while currentIndex > 0 && test[currentIndex] < test[currentIndex-1]{
                test.swapAt(currentIndex-1, currentIndex)
                currentIndex -= 1
            }
        }
        return test
    }
    
    func quickSort(data: [Int]) -> [Int] {
        var test = data
        return []
    }
    
}
