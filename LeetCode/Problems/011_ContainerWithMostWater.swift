//
//  011_ContainerWithMostWater.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/21.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/container-with-most-water/
 
 Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.
 
 Note: You may not slant the container and n is at least 2.
 
 Example:
 
 Input: [1,8,6,2,5,4,8,3,7]
 Output: 49
 
 */

import Foundation

class CalculateMostWater: NSObject {
    class func maxArea(_ height: [Int]) -> Int {
        if height.count < 2 {
            return 0
        }
        var i = 0
        var j = height.count - 1
        var result = 0
        while i < j {
            let temp =  min(height[i], height[j]) * (j-i)
            if temp > result {
                result = temp
            }
            
            if height[i] < height[j] {
                i = i + 1
            } else {
                j = j - 1
            }
        }
        return result
    }
}
