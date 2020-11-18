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
        if test.count 0= 1{
            return (test[i]*2)
        }
        else if test.count < 1{
            return 0
        }
        else{
            return (test[0]+test[test.count-1])
        }
    }
    
    func modeOfSorted(data: [Int]) -> (Int, Int){
        
        let test = data
        var current: Int
        var count: Int
        var modeCount: Int
        var modeInteger: Int
        var hasMore = true
        
        for i in 0...test.count-1{
            current = test[i]
            while hasMore == true{
                if current = test[i+1]{
                    count += 1
                }
                else{
                    hasMore = false
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
        return (modeInteger, modeCount)
    }
    
    func secondSmallestInteger(data: [Int]) -> Int? {
    
        let test = data
        if test.count < 2{
            return nil
        }
        else{
            return nil
        }
    }
    
    func modeOfUnsorted(data: [Int]) -> (Int, Int) {
        
        let test = data
        var current: Int
        var count: Int = 0
        var modeCount: Int
        var modeInteger: Int
            
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
        return (modeInteger, modeCount)
    }
}
