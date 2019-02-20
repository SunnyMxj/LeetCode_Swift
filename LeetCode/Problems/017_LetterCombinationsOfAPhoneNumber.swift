//
//  017_LetterCombinationsOfAPhoneNumber.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/20.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/letter-combinations-of-a-phone-number/
 
 Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent.
 
 A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
 
 
 
 Example:
 
 Input: "23"
 Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
 */

import Foundation

class PhoneNumber: NSObject {
    class func letterCombinations(_ digits: String) -> [String] {
        var result = [String].init()
        let map:[Character:String] = ["1":"*",
                                      "2":"abc",
                                      "3":"def",
                                      "4":"ghi",
                                      "5":"jkl",
                                      "6":"mno",
                                      "7":"pqrs",
                                      "8":"tuv",
                                      "9":"wxyz",
                                      "0":" "]
        
        for number in Array(digits) {
            let values = map[number]!
            if result.isEmpty {
                for c in values {
                    result.append(String(c))
                }
            } else {
                var temp = [String].init()
                for k in 0..<result.count {
                    let curr = result[k]
                    for c in values {
                        temp.append(curr + String(c))
                    }
                }
                result = temp
            }
        }
        return result
    }
}
