//
//  048_RotateImage.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/21.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/rotate-image/
 
 You are given an n x n 2D matrix representing an image.
 
 Rotate the image by 90 degrees (clockwise).
 
 Note:
 
 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
 
 Example 1:
 
 Given input matrix =
 [
 [1,2,3],
 [4,5,6],
 [7,8,9]
 ],
 
 rotate the input matrix in-place such that it becomes:
 [
 [7,4,1],
 [8,5,2],
 [9,6,3]
 ]
 */
import Foundation

class RotateImage: NSObject {
    class func rotate(_ matrix: inout [[Int]]) {
        var result = [[Int]].init()
        for _ in matrix {
            result.append([Int].init())
        }
        for line in matrix.reversed() {
            for i in 0..<line.count {
                result[i].append(line[i])
            }
        }
        matrix = result
    }
}
