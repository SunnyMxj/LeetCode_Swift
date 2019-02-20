//
//  001_TwoSum.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/14.
//  Copyright © 2019 Ryan. All rights reserved.
//

import Foundation

/*
 https://leetcode.com/problems/two-sum/
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

class TwoSumClass: NSObject {
    class func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        for i in 0..<(nums.count - 1) {
            if result.count > 0 {
                break
            }
            for j in (i+1)..<nums.count {
                if ((nums[i] + nums[j]) == target) {
                    result = [i,j]
                    break
                }
            }
        }
        return result
    }
}




