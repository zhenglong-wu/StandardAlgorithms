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
                        
                    Description: Quick Sort starts off by comparing the first and second element
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
                
                print("\nOutput array - \(sorting.quickSort(data: data))")
                
            default:
                print("")
            }
            
        }
    }
 
}

menu()


