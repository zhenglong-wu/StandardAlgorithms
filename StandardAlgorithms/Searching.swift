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
        
        var test = data
        hasFound = false
        return hasFound
        
    }
    
    
}
