//
//  047_PermutationsII.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/21.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/permutations-ii/
 
 Given a collection of numbers that might contain duplicates, return all possible unique permutations.
 
 Example:
 
 Input: [1,1,2]
 Output:
 [
 [1,1,2],
 [1,2,1],
 [2,1,1]
 ]
 */

import Foundation

class PermutationsII: NSObject {
    class func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var result = Set<[Int]>.init()
        for int in nums {
            arrayAddNumber(&result, int)
        }
        return Array(result)
    }
    
    class func arrayAddNumber(_ permute: inout Set<[Int]>, _ number: Int) {
        var result = Set<[Int]>.init()
        if permute.isEmpty {
            var itemArray = [Int].init()
            itemArray.append(number)
            result.insert(itemArray)
        } else {
            for itemArray in permute {
                for i in 0...itemArray.count {
                    var newItem = itemArray
                    if i < itemArray.count {
                        newItem.insert(number, at: i)
                    } else {
                        newItem.append(number)
                    }
                    result.insert(newItem)
                }
            }
        }
        permute = result
    }
}
