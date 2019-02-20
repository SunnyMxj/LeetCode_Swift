//
//  016_3Sum Closest.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/15.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/3sum-closest/
 
 Given an array nums of n integers and an integer target, find three integers in nums such that the sum is closest to target. Return the sum of the three integers. You may assume that each input would have exactly one solution.
 
 Example:
 
 Given array nums = [-1, 2, 1, -4], and target = 1.
 
 The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
 */

import Foundation

class threeSumClosest: NSObject {
    class func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let sortedNums = nums.sorted()
        var success = Int.max
        var find = false
        for i in 0..<sortedNums.count {
            if find {
                break
            }
            let first = sortedNums[i]
//            if first > target {
//                break
//            }
            if i > 0 && sortedNums[i - 1] == sortedNums[i] {
                continue
            }
            var tempIn = Int.max
            var j = i + 1
            var k = sortedNums.count - 1
            while j < k {
                let second = sortedNums[j]
                let third = sortedNums[k]
                let sumResult = first + second + third - target
                if abs(sumResult) < abs(tempIn) {
                    tempIn = sumResult
                }
                if sumResult > 0 {
                    k = k - 1
                } else if sumResult < 0 {
                    j = j + 1
                } else {
                    k = k - 1
                    j = j + 1
                    find = true
                    break
                }
            }
            if abs(tempIn) < abs(success) {
                success = tempIn
            }
        }
        success = success + target
        
        return success
    }
}
