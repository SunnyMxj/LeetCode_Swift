//
//  015_3Sum.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/15.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/3sum/
 
 Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
 
 Note:
 
 The solution set must not contain duplicate triplets.
 
 Example:
 
 Given array nums = [-1, 0, 1, 2, -1, -4],
 
 A solution set is:
 [
 [-1, 0, 1],
 [-1, -1, 2]
 ]
 */

import Foundation
class threeSum: NSObject {
    class func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var success = Set<[Int]>()
        
        for i in 0..<sortedNums.count {
            let first = sortedNums[i]
            if first > 0 {
                break
            }
            if i > 0 && sortedNums[i - 1] == sortedNums[i] {
                continue
            }
            var j = i + 1
            var k = sortedNums.count - 1
            while j < k {
                let second = sortedNums[j]
                let third = sortedNums[k]
                let sumResult = first+second+third
                if sumResult > 0 {
                    k = k - 1
                } else if sumResult < 0 {
                    j = j + 1
                } else {
                    k = k - 1
                    j = j + 1
                    success.insert([first,second,third])
                }
            }
        }
        
        return Array(success)
    }
}
