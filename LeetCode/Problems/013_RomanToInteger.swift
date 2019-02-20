//
//  013_RomanToInteger.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/15.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/roman-to-integer/
 
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
 Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.
 
 Example 1:
 
 Input: "III"
 Output: 3
 */

import Foundation

class RomanToInteger: NSObject {
    class func romanToInt(_ s: String) -> Int {
        let mapper:[String:Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        
        var mutableS = s
        var result = 0
        while mutableS.count > 0 {
            let last = mapper[String(mutableS.suffix(1))]!
            mutableS = String(mutableS.prefix(mutableS.count - 1))
            if last == 1 {
                result = result + last
            } else {
                if mutableS.count > 0 {
                    let prefex = mapper[String(mutableS.suffix(1))]!
                    if canBePrefexInt(last, prefex) {
                        result = result + last - prefex
                        mutableS = String(mutableS.prefix(mutableS.count - 1))
                    } else {
                        result = result + last
                    }
                } else {
                    result = result + last
                }
            }
        }
        return result
    }

    class func canBePrefexInt(_ t: Int, _ p: Int) -> Bool {
        return (t/p == 5) || (t/p == 10)
    }
}