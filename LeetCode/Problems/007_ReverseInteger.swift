//
//  007_ReverseInteger.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/15.
//  Copyright © 2019 Ryan. All rights reserved.
//


/*
 https://leetcode.com/problems/reverse-integer/
 
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output: 321
 */

import Foundation

class ReverseInteger: NSObject {
    class func reverse(_ x: Int) -> Int {
        var temp = x
        var result = 0
        let IntMax = 2<<30
        let IntMin = -IntMax
        while temp != 0 {
            let inertemp = temp%10
            temp = temp/10
            if (result > IntMax / 10 || (result == IntMax / 10 && inertemp > 7)) {
                result = 0
                break
            }
            if (result < IntMin / 10 || (result == IntMin / 10 && inertemp < -8)) {
                result = 0
                break
            }
            result = result*10 + inertemp
        }
        return result
    }
}
