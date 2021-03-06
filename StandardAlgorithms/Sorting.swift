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
        
        let test = data
        var sorted = [Int]()
        var left = [Int]()
        var right = [Int]()
        if test.count > 1{
            for item in test[1..<test.count]{
                if item < test[0]{
                    left.append(item)
                }
                else{
                    right.append(item)
                }
            }
            sorted.append(contentsOf: quickSort(data: left))
            sorted.append(test[0])
            sorted.append(contentsOf: quickSort(data: right))
        }
        else{
            sorted = test
        }
        return sorted
    }
    
    func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
        
        var left = 0
        var right = 0
        var sorted = [Int]()
        
        while left < leftArray.count && right < rightArray.count {
            if leftArray[left] < rightArray[right] {
                sorted.append(leftArray[left])
                left += 1
            }
            else if leftArray[left] > rightArray[right] {
                sorted.append(rightArray[right])
                right += 1
            }
            else {
                sorted.append(leftArray[left])
                left += 1
                sorted.append(rightArray[right])
                right += 1
            }
        }
        while left < leftArray.count {
            sorted.append(leftArray[left])
            left += 1
        }
        while right < rightArray.count {
            sorted.append(rightArray[right])
            right += 1
        }
        return sorted
    }

    func mergeSort(data: [Int]) -> [Int] {
        
        let test = data
        guard test.count > 1 else {
            return test
        }
    
        let middleIndex = test.count / 2

        let leftArray = mergeSort(data: Array(test[0..<middleIndex]))
        let rightArray = mergeSort(data: Array(test[middleIndex..<test.count]))
        
        return merge(leftArray: leftArray, rightArray: rightArray)
    }
    
}
