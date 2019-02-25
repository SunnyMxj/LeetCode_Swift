//
//  049_GroupAnagrams.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/22.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/group-anagrams/
 
 Given an array of strings, group anagrams together.
 
 Example:
 
 Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Output:
 [
 ["ate","eat","tea"],
 ["nat","tan"],
 ["bat"]
 ]
 Note:
 
 All inputs will be in lowercase.
 The order of your output does not matter.
 */
import Foundation

class GroupAnagrams: NSObject {
    class func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [[String]] = []
        var dict: [Int: Int] = [:]
        
        for item in strs {
            let key = item.sorted().hashValue
            if let index = dict[key] {
                result[index].append(item)
            } else {
                dict[key] = result.count
                result.append([item])
            }
        }
        
        return result
    }
}
