//
//  Question1.swift
//  Assignment2-advSwift
//
//  Created by Cambrian on 2022-10-17.
//

import Foundation
/**
 Question 1:
 for this questions you need to create 3 functions
 read the questions carefully - make you the function names parameters and return type are all the same as the question
 
 FUNCTION 1:
 create a function that will calculate the area of a square
 function name:
    - calculateArea
 parameters:
    - height: Int
    - width: Int
 return type:
    - Int
 
 FUNCTION 2:
 create a function that will convert and print a string into all caps
 function name:
    - allCap
 parameters:
    - string: String
 return type:
    - String
 
 FUNCTION 3:
 create a function that will return the middle element of an array
 function name:
    - middle
 paramters:
    - array: [Int]
 return type
    - Int?
 NOTE, if there is no middle element return nil. there is no middle element if the value is even
 ex: [1,2,3,4,5,6] has no middle because 3,4 are both in the middle
 ex: [1,2,3,4,5] has a middle of 3
 */

//Answers
//FUNCTION 1:
//create a function that will calculate the area of a square
func calculateArea(height: Int, width: Int ) -> Int {
    let area = height * width
    return area
}
//FUNCTION 2:
//create a function that will convert and print a string into all caps
func allCap(string: String) -> String {
    let uppercaseString = string.uppercased()
    return uppercaseString
}
//FUNCTION 3:
//create a function that will return the middle element of an array
func middle(array: [Int]) -> Int? {
    let count = array.count
    if count % 2 == 0 {
        return nil
    }
    let middleIndex = count / 2
    return array[middleIndex]
}
