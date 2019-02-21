//
//  042_TrappingRainWater.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/21.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/trapping-rain-water/
 
 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.
 
 
 The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped. Thanks Marcos for contributing this image!
 
 Example:
 
 Input: [0,1,0,2,1,0,1,3,2,1,2,1]
 Output: 6
 */
import Foundation

class TrappingRainWater: NSObject {
    class func trap(_ height: [Int]) -> Int {
        var leftToRight = [Int].init()
        var rightToLeft = [Int].init()
        
        var leftMax = 0
        for l in 0..<height.count {
            if height[l] > leftMax {
                leftMax = height[l]
                leftToRight.append(0)
            } else {
                leftToRight.append(leftMax - height[l])
            }
        }
        
        var rightMax = 0
        for r in (0..<height.count).reversed() {
            if height[r] > rightMax {
                rightMax = height[r]
                rightToLeft.append(0)
            } else {
                rightToLeft.append(rightMax - height[r])
            }
        }
        
        var result = 0
        let totalCount = height.count - 1
        for i in 0..<leftToRight.count {
            result = result + min(leftToRight[i], rightToLeft[totalCount - i])
        }
                
        return result
    }
}
