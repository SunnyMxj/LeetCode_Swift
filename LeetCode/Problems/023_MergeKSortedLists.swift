//
//  023_MergeKSortedLists.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/25.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/merge-k-sorted-lists/
 
 Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.
 
 Example:
 
 Input:
 [
 1->4->5,
 1->3->4,
 2->6
 ]
 Output: 1->1->2->3->4->4->5->6
 */

import Foundation
    
class MergeKSortedLists: NSObject {
    class func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.isEmpty {
            return nil
        }
        if lists.count < 2 {
            return lists.first!
        }
        let middle = lists.count / 2
        let left = mergeKLists(Array(lists[0..<middle]))
        let right = mergeKLists(Array(lists[middle...]))
        
        return mergeTwoLists(left, right)
    }
    
    class func mergeTwoLists(_ lists1: ListNode?, _ lists2: ListNode?) -> ListNode? {
        if lists1 == nil && lists2 == nil {
            return nil
        }
        let mergedList = ListNode.init(0)
        var tailNode = mergedList
        
        var tl1:ListNode? = lists1
        var tl2:ListNode? = lists2
        while (tl1 != nil && tl2 != nil) {
            if tl1!.val < tl2!.val {
                tailNode.next = tl1!
                tl1 = tl1!.next
            } else {
                tailNode.next = tl2!
                tl2 = tl2!.next
            }
            tailNode = tailNode.next!
        }
        if tl1 == nil {
            tailNode.next = tl2
        } else if tl2 == nil {
            tailNode.next = tl1
        }
        return mergedList.next
    }
}
