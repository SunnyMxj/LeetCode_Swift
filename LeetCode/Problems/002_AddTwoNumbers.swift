//
//  002_AddTwoNumbers.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/19.
//  Copyright © 2019 Ryan. All rights reserved.
//

/*
 https://leetcode.com/problems/add-two-numbers/
 
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Example:
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 Explanation: 342 + 465 = 807.
 */

import Foundation

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class AddTwoNumbers: NSObject {
    class func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result:ListNode = ListNode.init(0)
        var curr = result
        var carry = 0
        if var p:ListNode? = l1, var q:ListNode? = l2 {
            while (p != nil || q != nil) {
                var sum = carry
                if let x:Int = p?.val {
                    sum = sum + x
                }
                if let y:Int = q?.val {
                    sum = sum + y
                }
                carry = sum/10
                curr.next = ListNode.init(sum%10)
                curr = curr.next!
                if (p != nil && p!.next != nil) {
                    p = p!.next!
                } else {
                    p = nil
                }
                if (q != nil && q!.next != nil) {
                    q = q!.next!
                } else {
                    q = nil
                }
            }
            if carry > 0 {
                curr.next = ListNode.init(carry)
            }
        }
        return result.next!
    }
}
