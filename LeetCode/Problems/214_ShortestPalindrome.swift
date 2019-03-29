//
//  214_ShortestPalindrome.swift
//  LeetCode
//
//  Created by jkkkkkk on 2019/3/29.
//  Copyright © 2019 Ryan. All rights reserved.
//


/*
 https://leetcode.com/problems/shortest-palindrome/
 
 Given a string s, you are allowed to convert it to a palindrome by adding characters in front of it. Find and return the shortest palindrome you can find by performing this transformation.
 
 Example 1:
 
 Input: "aacecaaa"
 Output: "aaacecaaa"
 Example 2:
 
 Input: "abcd"
 Output: "dcbabcd"
 */
import Foundation

class ShortestPalindrome: NSObject {
    class func shortestPalindrome(_ s: String) -> String {
        var i = 0
        var end = s.count - 1
        var j = end
        var chars = Array(s)
        while i < j {
            if chars[i] == chars[j] {
                i += 1
                j -= 1
            } else {
                i = 0
                end -= 1
                j = end
            }
        }
//        let rest = s.substring(from: s.index(s.startIndex, offsetBy: end + 1))
        let rest = s[s.index(s.startIndex, offsetBy: end + 1)...]
        return rest.reversed() + s
    }
    
//    ???
//    class func shortestPalindrome(_ s: String) -> String {
//        var sExt = Array(s + "#" + s.reversed())
//        var f = Array(repeating: 0, count: sExt.count)
//        var t = f[0]
//
//        for i in 1..<sExt.count {
//            t = f[i - 1]
//            while t > 0 && (sExt[i] != sExt[t]) {
//                t = f[t - 1]
//            }
//            if sExt[i] == sExt[t] {
//                t += 1
//            }
//            f[i] = t
//        }
//
//        return s.reversed()[0..<s.count - f[sExt.count - 1]] + s
//    }
}
