//
//  021_MergeTwoSortedLists.swift
//  LeetCode
//
//  Created by jkkkkkk on 2019/3/4.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/merge-two-sorted-lists/
 
 Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
 
 Example:
 
 Input: 1->2->4, 1->3->4
 Output: 1->1->2->3->4->4
 */
import Foundation

class MergeTwoSortedLists: NSObject {
    public func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil {
            return nil
        }
        let mergedList = ListNode.init(0)
        var tailNode = mergedList
        
        var tl1:ListNode? = l1
        var tl2:ListNode? = l2
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
