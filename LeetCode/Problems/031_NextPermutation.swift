//
//  031_NextPermutation.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/22.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/next-permutation/
 
 Implement next permutation, which rearranges numbers into the lexicographically next greater permutation of numbers.
 
 If such arrangement is not possible, it must rearrange it as the lowest possible order (ie, sorted in ascending order).
 
 The replacement must be in-place and use only constant extra memory.
 
 Here are some examples. Inputs are in the left-hand column and its corresponding outputs are in the right-hand column.
 
 1,2,3 → 1,3,2
 3,2,1 → 1,2,3
 1,1,5 → 1,5,1
 */
import Foundation

class NextPermutation: NSObject {
    class func nextPermutation(_ nums: inout [Int]) {
        if nums.count < 2 {
            return
        }
        
        var curr = nums.last!
        var reverseCount = 1
        for i in (0..<(nums.count - 1)).reversed() {
            let item = nums[i]
            if item >= curr {
                curr = item
                reverseCount = reverseCount + 1
                continue
            } else {
                break
            }
        }
        if reverseCount == nums.count {
            nums = nums.reversed()
            return
        }
        
        let index = nums.count - reverseCount - 1
        var result = Array(nums[0...index])
        var rest = Array(nums[(index+1)..<nums.count])
        let threshold = result.last!
        var current = rest.first!
        var currentIndex = 0
        for (index, value) in rest.enumerated() {
            if value > threshold && value <= current {
                current = value
                currentIndex = index
            }
        }
        rest[currentIndex] = threshold
        result[(result.count - 1)] = current
        result = result + rest.reversed()
        nums = result
    }
}
