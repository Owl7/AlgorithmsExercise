//
//  main.swift
//  AlgorithmsExercise
//
//  Created by Crack on 2018/5/19.
//  Copyright © 2018年 Crack. All rights reserved.
//

import Foundation

func selectionSort(arr: [Int], n: Int) {
    
    var newArr = arr
    
    for i in 0 ..< n {
        var minIndex = i
        for j in i+1 ..< n {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
//            print(arr[j], arr[minIndex])
            newArr.swapAt(arr[j], arr[minIndex])
        }
        
//        print(" ")
    }
    
}

func main() {
    var arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    selectionSort(arr: arr, n: arr.count)
    for i in 0 ..< arr.count {
        if i == arr.count - 1 {
            print(arr[i])
        } else {
            print("\(arr[i]) ", terminator: "")
        }
    }
}

main()

