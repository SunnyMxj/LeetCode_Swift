//
//  TestCase.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/14.
//  Copyright © 2019 Ryan. All rights reserved.
//

import Foundation

class TestCase: NSObject {
    
    class func runTests() {
//        let result = ReverseInteger.reverse(1563847412)
//        let result = TwoSumClass.twoSum([2, 7, 11, 15], 9)
//        let result = RomanToInteger.romanToInt("DCCCX")
//        let result = IntegerToRoman.intToRoman(810)
//        let result = threeSumClosest.threeSumClosest([1,1,1,1],0)
        
        //add two numbers
//        let list1 = ListNode.init(2)
//        list1.next = ListNode.init(4)
//        list1.next!.next = ListNode.init(3)
//        let list2 = ListNode.init(5)
//        list2.next = ListNode.init(6)
//        list2.next!.next = ListNode.init(4)
//        let result = AddTwoNumbers.addTwoNumbers(list1, list2)
        
//        let result = ZigZagConversion.convert("PAYPALISHIRING", 4)
        
//        let result = StringToInteger.myAtoi("2147483648")
//        let result = PhoneNumber.letterCombinations("234")
//        let result = GenerateParentheses.generateParenthesis(3)
        
//        var arg = [[1,2,3],[4,5,6]]
//        RotateImage.rotate(&arg)
//        let result = Permutations.permute([1,2])
//        let result = PermutationsII.permuteUnique([1,1,2])
//        let result = CalculateMostWater.maxArea([2,3,4,5,18,17,6])
//        let resutl = TrappingRainWater.trap([0,1,0,2,1,0,1,3,2,1,2,1])
//        let result = LongestCommonPrefix.longestCommonPrefix(["dog","racecar","car"])
//        var arg = [2,3,1,3,3]
//        let _ = NextPermutation.nextPermutation(&arg)
//        let result = GroupAnagrams.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
        
        let list1 = ListNode.init(1)
        list1.next = ListNode.init(4)
        list1.next!.next = ListNode.init(5)
        let list2 = ListNode.init(1)
        list2.next = ListNode.init(3)
        list2.next!.next = ListNode.init(4)
        let list3 = ListNode.init(2)
        list3.next = ListNode.init(6)
        let list4 = ListNode.init(1)
        let result = MergeKSortedLists.mergeKLists([list1,list2,list3])
//        let result = MergeKSortedLists.mergeKLists([list1,list2,list3])
//        let result = MergeKSortedLists.mergeTwoLists(list1,list2)
//        print("result is " + String(result))
    }
}
