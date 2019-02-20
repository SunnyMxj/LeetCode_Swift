//
//  006_ZigZagConversion.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/19.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/zigzag-conversion/
 
 The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)
 
 P   A   H   N
 A P L S I I G
 Y   I   R
 And then read line by line: "PAHNAPLSIIGYIR"
 
 Write the code that will take a string and make this conversion given a number of rows:
 
 string convert(string s, int numRows);
 Example 1:
 
 Input: s = "PAYPALISHIRING", numRows = 3
 Output: "PAHNAPLSIIGYIR"
 Example 2:
 
 Input: s = "PAYPALISHIRING", numRows = 4
 Output: "PINALSIGYAHRPI"
 Explanation:
 
 P     I    N
 A   L S  I G
 Y A   H R
 P     I
 */

import Foundation

class ZigZagConversion: NSObject {
    class func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        
        var arrays:[String] = Array.init()
        for _ in 0..<numRows {
            arrays.append("")
        }
        
        var index = 0
        var orderFlag = true
        for c in s {
            var itemString = arrays[index]
            itemString.append(c)
            arrays[index] = itemString
            
            if orderFlag {
                index = index + 1
            } else {
                index = index - 1
            }
            if index == (arrays.count - 1) {
                orderFlag = false
            } else if index == 0 {
                orderFlag = true
            }
        }
        
        var result = ""
        for i in 0..<arrays.count {
            let itemString = arrays[i]
            result = result + itemString
        }
        return result
    }
}
