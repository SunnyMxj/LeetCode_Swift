//
//  012_IntegerToRoman.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/15.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/integer-to-roman/
 
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
 
 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.
 
 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
 
 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 Given an integer, convert it to a roman numeral. Input is guaranteed to be within the range from 1 to 3999.
 */

import Foundation

class IntegerToRoman: NSObject {
    class func intToRoman(_ num: Int) -> String {
        let thousand = num/1000
        let hundred = (num%1000)/100
        let ten = (num%100)/10
        let single = num%10
        
        return stringForNumber(thousand, 4) + stringForNumber(hundred, 3) + stringForNumber(ten, 2) + stringForNumber(single, 1)
    }
    
    class func stringForNumber(_ num: Int,_ scale: Int) -> String {
        if num == 0 {
            return ""
        }
        if num > 3999 {
            return ""
        }
        var one:String
        var five:String
        var ten:String
        switch scale {
        case 2:
            one = "X"
            five = "L"
            ten = "C"
        case 3:
            one = "C"
            five = "D"
            ten = "M"
        case 4:
            one = "M"
            five = ""
            ten = ""
        default:
            one = "I"
            five = "V"
            ten = "X"
        }
        var result = ""
        if num < 4 {
            for i in 0..<num {
                result = result + one
            }
        } else if num == 4 {
            result = one + five
        } else if num == 5 {
            result = five
        } else if num < 9 {
            result = five
            for i in 5..<num {
                result = result + one
            }
        } else if num == 9 {
            result = one + ten
        } else {
            result = ten
        }
        return result
    }
}
