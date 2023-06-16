//
//  main.swift
//  Assignment2-advSwift
//
//  Created by Cambrian on 2022-10-17.
//

import Foundation

print("UNIT TEST...")
// Unit Test for question 1 FUNCTION 1
let height = 5
let width = 5
let area = calculateArea(height: height, width: width)
print("The area of the square is: \(area)")

// Unit Test for question 1 FUNCTION 2
let inputString = "Hello, World! Greetings from Sreenath..."
let result = allCap(string: inputString)
print("Upper Cased String : \(result)")

//Unit Test for question 1 FUNCTION 3
let array1 = [1, 2, 3, 4, 5, 6]
let result1 = middle(array: array1)
check(result1, array1)
let array2 = [1, 2, 3, 4, 5]
let result2 = middle(array: array2)
check(result2, array2)

func check(_ middle:Int?, _ array: [Int]){
    if let result = middle {
        print("The middle element of the array \(array) is: \(result)")
    } else {
        print("The array \(array) has no middle element.")
    }
}
