//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Wu, Zhenglong (SPH) on 18/11/2020.
//

import Foundation

class Unknown {
    
    func sumOfFirstAndLast(data: [Int]) -> Int {
        
        let test = data
        if test.count == 1{
            return (test[0]*2)
        }
        else if test.count < 1{
            return 0
        }
        else{
            return (test[0]+test[test.count-1])
        }
    }
    
    func modeOfSorted(data: [Int]) -> Int {
        
        let test = data
        
        if test.count <= 2{
            return test[1]
        }
        else{
            var index: Int = 0
            var modeCount: Int = 0
            var modeInteger: Int = 0
            var counter: Int = 0
            var current: Int = 0

            while index < test.count {
                current = test[index]
                counter = 1
                while index+1 < test.count && test[index] == test[index+1]{
                    counter += 1
                    index += 1
                }
                if counter > modeCount{
                    modeCount = counter
                    modeInteger = current
                }
                index += 1
            }
           return modeInteger
        }
    }
    
    func secondSmallestInteger(data: [Int]) -> Int? {
    
        let test = data
        if test.count < 2{
            return nil
        }
        else{
            let smallestIntegerRemoved = removeSmallestInteger(data: data)
            var smallest: Int = smallestIntegerRemoved[0]
            
            for i in 1...smallestIntegerRemoved.count-1{
                if smallest > test[i]{
                smallest = test[i]
                }
            }
            return smallest
        }
    }
    
    func removeSmallestInteger(data: [Int]) -> [Int] {
        
        var test = data
        var smallest: Int = test[0]
        
        for i in 1...test.count-1{
            if smallest > test[i]{
                smallest = test[i]
            }
        }
        test = test.filter { $0 != smallest }
        return test
    }
    
    func modeOfUnsorted(data: [Int]) -> Int {
        
        let test = data
        var current: Int
        var count: Int = 0
        var modeCount: Int = 0
        var modeInteger: Int = 0
            
        for i in 0...test.count-1{
            current = test[i]
            for i in 0...test.count-1{
                if current == test[i]{
                    count += 1
                }
            }
            if count > modeCount{
                modeCount = count
                modeInteger = current
            }
            else{
                count = 0
            }
        }
        return modeInteger
    }
}
