//
//  014_LongestCommonPrefix.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/21.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/longest-common-prefix/
 
 Write a function to find the longest common prefix string amongst an array of strings.
 
 If there is no common prefix, return an empty string "".
 
 Example 1:
 
 Input: ["flower","flow","flight"]
 Output: "fl"
 Example 2:
 
 Input: ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 */

import Foundation

class LongestCommonPrefix: NSObject {
    class func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        } else if strs.count < 2 {
            return strs.first!
        }
        var common = strs.first!
        for i in 1..<strs.count {
            if common.count > 0 {
                var temp = ""
                let array1 = Array(common)
                let array2 = Array(strs[i])
                for j in 0..<min(array1.count,array2.count) {
                    if array1[j] == array2[j] {
                        temp = temp + String(array1[j])
                    } else {
                        break
                    }
                }
                common = temp
            } else {
                break
            }
        }
        return common
    }
}
