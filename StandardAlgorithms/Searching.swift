//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Wu, Zhenglong (SPH) on 17/11/2020.
//

import Foundation

class Searching {
    
    func linearSearch(data: [Int], target: Int) -> Bool {
        var test = data
        hasFound = false
        for i in 0...data.count-1{
            if data[i] = target{
                hasFound = true
                return hasFound
            }
        }
        return hasFound
    }
    
    func binarySearch(data: [Int], target: Int) -> Bool {
        
        let test = data
        var hasFound = false
        var left = 0
        var right = test.count - 1

        while left <= right{

            let middle = Int(floor(Double(left + right) / 2.0))

            if test[middle] < value{
                left = middle + 1
            }
            else if test[middle] > value{
                right = middle - 1
            }
            else{
                hasFound = true
                return true
            }
        }

        return false
    }
    
}
