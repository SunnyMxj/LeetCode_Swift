//
//  024_SwapNodesInPairs.swift
//  LeetCode
//
//  Created by jkkkkkk on 2019/3/4.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/swap-nodes-in-pairs/
 
 Given a linked list, swap every two adjacent nodes and return its head.
 
 You may not modify the values in the list's nodes, only nodes itself may be changed.
 
 
 Example:
 
 Given 1->2->3->4, you should return the list as 2->1->4->3.
 */
import Foundation

class SwapNodesInPairs: NSObject {
    class func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let temp: ListNode? = head?.next
        head?.next = swapPairs(head!.next?.next)
        temp?.next = head
        return temp
    }
}
