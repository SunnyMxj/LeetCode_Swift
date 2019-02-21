//
//  046_Permutations.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/21.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/permutations/
 
 Given a collection of distinct integers, return all possible permutations.
 
 Example:
 
 Input: [1,2,3]
 Output:
 [
 [1,2,3],
 [1,3,2],
 [2,1,3],
 [2,3,1],
 [3,1,2],
 [3,2,1]
 ]
 */

import Foundation

class Permutations: NSObject {
    class func permute(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]].init()
        for int in nums {
            arrayAddNumber(&result, int)
        }
        return result
    }
    
    class func arrayAddNumber(_ permute: inout [[Int]], _ number: Int) {
        var result = [[Int]].init()
        if permute.isEmpty {
            var itemArray = [Int].init()
            itemArray.append(number)
            result.append(itemArray)
        } else {
            for itemArray in permute {
                for i in 0...itemArray.count {
                    var newItem = itemArray
                    if i < itemArray.count {
                        newItem.insert(number, at: i)
                    } else {
                        newItem.append(number)
                    }
                    result.append(newItem)
                }
            }
        }
        permute = result
    }
}
