//
//  022_GenerateParentheses.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/20.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/generate-parentheses/
 
 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
 
 For example, given n = 3, a solution set is:
 
 [
 "((()))",
 "(()())",
 "(())()",
 "()(())",
 "()()()"
 ]
 
 */

import Foundation

class GenerateParentheses: NSObject {
    class func generateParenthesis(_ n: Int) -> [String] {
        var result = Set<String>.init()
        var count = n
        while count > 0 {
            count = count - 1
            if result.isEmpty {
                result.insert("()")
            } else {
                var temp = Set<String>.init()
                for item in result {
                    for i in 0..<item.count {
                        var curr = item
                        curr.insert(")", at: curr.index(curr.startIndex, offsetBy: i))
                        curr.insert("(", at: curr.index(curr.startIndex, offsetBy: i))
//                        curr.insert(contentsOf: ["(",")"], at: curr.index(curr.startIndex, offsetBy: i))
                        temp.insert(curr)
                    }
                }
                result = temp
            }
        }
        return Array(result)
    }
}
