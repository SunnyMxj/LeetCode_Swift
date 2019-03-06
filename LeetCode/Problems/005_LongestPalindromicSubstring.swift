//
//  005_LongestPalindromicSubstring.swift
//  LeetCode
//
//  Created by jkkkkkk on 2019/3/4.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/longest-palindromic-substring/
 
 Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.
 
 Example 1:
 
 Input: "babad"
 Output: "bab"
 Note: "aba" is also a valid answer.
 */
import Foundation

class LongestPalindromicSubstring: NSObject {
    class func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        let all = Array(s)
        var resultCount = 0
        var start = 0
        for i in 1..<all.count {
            if all.count - i < resultCount/2 + resultCount%2 {
                break
            }
            let t = min(i, all.count - i)
            
            var count = 0
            for j in 0..<t {
                if all[i-j-1] == all[i+j] {
                    count = count + 2
                } else {
                    break
                }
            }
            
            var count1 = 1
            if i < all.count - 1 {
                for k in 0..<t {
                    if i + k < all.count - 1 {
                        if all[i-k-1] == all[i+k+1] {
                            count1 = count1 + 2
                        } else {
                            break
                        }
                    } else {
                        break
                    }
                }
            }
            
            if count > count1 {
                if count > resultCount {
                    resultCount = count
                    start = i - count/2
                }
            } else {
                if count1 > resultCount {
                    resultCount = count1
                    start = i - (count1-1)/2
                }
            }
        }
        let startIndex = s.index(s.startIndex, offsetBy: start)
        let endIndex = s.index(startIndex, offsetBy: resultCount)
        let result = s[startIndex..<endIndex]
        return String(result)
    }
}
