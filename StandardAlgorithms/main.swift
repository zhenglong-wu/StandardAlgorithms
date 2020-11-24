//
//  main.swift
//  StandardAlgorithms
//
//  Created by Wu, Zhenglong (SPH) on 11/11/2020.
//

import Foundation

func menu() {
    
    print("""
        1. Bubble Sort
        2. Merge Sort
        3. Insertion Sort
        4. Quick Sort
        5. Linear Search
        6. Binary Search
        """)
    print("enter choice - ")
    if let input = readLine(){
        if let integer = Int(input){
            let number = integer
            switch number {
            case 1:
                
                let sorting = Sorting()
                
                print("""
                    Bubble Sort:
                        
                    Description: Bubble Sort compares the items in the list and swaps
                                    them if the latter item is smaller than the former item,
                                    each time the algorithm gets to the end of the list,
                                    it is called a pass. At the end of the first pass, the
                                    largest item will be sorted at the end of the list.
                                    When the algorithm goes through the list and no swaps
                                    are made, the list has been sorted.
                    
                    Big O Complexities:
                        
                        Best case scenario: time complexity - O(n), space complexity - O(1)

                        Average case scenario: time complexity - O(n^2), space complexity - O(1)

                        Worst case scenario: time complexity - O(n^2), space complexity - O(1)
                            
                    """)
                
                var data = [Int]()
                
                for _ in 1...25{
                    data.append(Int.random(in: 1..<100))
                }
                
                print("Input array - \(data)")
                
                print("\nOutput array - \(sorting.bubbleSort(data: data))")
                
            case 2:
                
                let sorting = Sorting()
                
                print("""
                    Merge Sort:
                        
                    Description: Merge Sort is a divide and conquer type algorithm, it repeatedly
                                    halves the list down until all the items are in its individual,
                                    single sublist. It now starts to sort them with its surrounding
                                    sublists and starts to merge the sorted list, once the list start
                                    to merge each indexed element of each sublist is compared to other
                                    same indexed elements and are sorted into a bigger list. This
                                    process is repeated until there is only one list.
                    
                    Big O Complexities:
                        
                        Best case scenario: time complexity - O(n * Log n), space complexity - O(n)

                        Average case scenario: time complexity - O(n * Log n), space complexity - O(n)

                        Worst case scenario: time complexity - O(n * Log n), space complexity - O(n)
                            
                    """)
                
                var data = [Int]()
                
                for _ in 1...25{
                    data.append(Int.random(in: 1..<100))
                }
                
                print("Input array - \(data)")
                
                print("\nOutput array - \(sorting.mergeSort(data: data))")
                
            case 3:
                
                let sorting = Sorting()
                
                print("""
                    Insertion Sort:
                        
                    Description: Insertion Sort starts off by comparing the first and second element
                                    of the list, then creates a sorted sublist that it repeated compares
                                    and sorts, taking elements from the unsorted list from the begining.
                                    When it takes an element from the unsorted list, it compares that
                                    element with the existing elements of the sorted list and inserts
                                    that element at the correct position. When the unsorted list is
                                    empty, the entirety of the list is sorted.

                    Big O Complexities:
                        
                        Best case scenario: time complexity - O(n), space complexity - O(1)

                        Average case scenario: time complexity - O(n^2), space complexity - O(1)

                        Worst case scenario: time complexity - O(n^2), space complexity - O(1)
                            
                    """)
                
                var data = [Int]()
                
                for _ in 1...25{
                    data.append(Int.random(in: 1..<100))
                }
                
                print("Input array - \(data)")
                
                print("\nOutput array - \(sorting.insertionSort(data: data))")
                
            case 4:
                
                let sorting = Sorting()
                
                print("""
                    Quick Sort:
                        
                    Description: Quick Sort is also a divide and conquer type algorithm. It recursively
                                    calls a function which chooses an element in the list as a pivot,
                                    then compares all the items in the list to the pivot, and filters
                                    all smalller numbers to the "left" array, and all the larger
                                    numbers to the "right" array. Then the algorithm recursively calls
                                    the function that does the left and right sorting for each left and
                                    right array. At the base case the algorithm combines all the "left"
                                    and "right" arrays to form a sorted array.

                    Big O Complexities:
                        
                        Best case scenario: time complexity - O(n * log n), space complexity - O(n)

                        Average case scenario: time complexity - O(n * log n), space complexity - O(n)

                        Worst case scenario: time complexity - O(n^2), space complexity - O(n)
                            
                    """)
                
                var data = [Int]()
                
                for _ in 1...25{
                    data.append(Int.random(in: 1..<100))
                }
                
                print("Input array - \(data)")
                
                print("\nOutput array - \(sorting.quickSort(data: data))")
                
            case 5:
                
                let searching = Searching()
                
                print("""
                    Linear Search:
                        
                    Description: Linear Search is a brute force algorithm that iterates through
                                    a list and checks for the target integer one item by one item
                                    until the target item is found, if the target item is not found
                                    and the algorithm reaches the end of the list, the algorithm returns
                                    that the target was not found in the algorithm.

                    Big O Complexities:
                        
                        Best case scenario: time complexity - O(n), space complexity - O(1)

                        Average case scenario: time complexity - O(n), space complexity - O(1)

                        Worst case scenario: time complexity - O(n), space complexity - O(1)
                            
                    """)
                
                var data = [Int]()
                
                let target: Int = 8
                
                for _ in 1...25{
                    data.append(Int.random(in: 1..<10))
                }
                
                print("Target - \(target)")
                
                print("Input array - \(data)")
                
                print("\nOutput array - \(searching.linearSearch(data: data, target: target))")
                
            case 6:
                
                let searching = Searching()
                
                print("""
                    Binary Search:
                        
                    Description: Binary Search is a decrease and conquer algorithm that uses "flags".
                                    It first finds the item at the middle of the list and compares it
                                    with the target. If the middle item is bigger then it goes below the
                                    middle item of the list, if the middle item is smaller than the target
                                    then it goes above the middle item of the list. The algorithm repeatedly
                                    does this, finding the middle item of the sub-lists and comparing until
                                    it finds its target.

                    Big O Complexities:
                        
                        Best case scenario: time complexity - O(1), space complexity - O(1)

                        Average case scenario: time complexity - O(log n), space complexity - O(1)

                        Worst case scenario: time complexity - O(log n), space complexity - O(1)
                            
                    """)
                
                var data = [Int]()
                
                let target: Int = 8
                
                for _ in 1...25{
                    data.append(Int.random(in: 1..<10))
                }
                
                print("Target - \(target)")
                
                print("Input array - \(data)")
                
                print("\nResult - \(searching.binarySearch(data: data, target: target))")
            
            default:
                print("")
            }
            
        }
    }
 
}

menu()


