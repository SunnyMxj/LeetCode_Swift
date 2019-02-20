//
//  008_StringToInteger.swift
//  LeetCode
//
//  Created by Ryan on 2019/2/19.
//  Copyright © 2019 Ryan. All rights reserved.
//

import Foundation

class StringToInteger: NSObject {
    class func myAtoi(_ str: String) -> Int {
        var temp = ""
        var hasPrefex = false
        for c in str {
            if hasPrefex {
                if checkNumber(c) {
                    temp.append(c)
                } else {
                    break
                }
            } else {
                if !checkEmpty(c) {
                    hasPrefex = true
                    if checkLegal(c) {
                        temp.append(c)
                    } else {
                        break
                    }
                }
            }
        }
        
        var result = 0
        if temp.count > 0 {
            if (temp.prefix(1) == "-" || temp.prefix(1) == "+") && temp.count == 1 {
                return 0
            }
            
            var noneZero = ""
            var hasFlag = temp.prefix(1) == "-" || temp.prefix(1) == "+"
            var flagString = ""
            if hasFlag {
                flagString = String(temp.prefix(1))
            }
            for c in temp {
                if hasFlag {
                    hasFlag = false
                    continue
                }
                if noneZero.count > 0 {
                    noneZero.append(c)
                } else if c != "0" {
                    noneZero.append(c)
                }
            }
            if noneZero.count == 0 {
                return 0
            }
            temp = flagString + noneZero
            
            let string = String(Int.max)
            if temp.count > string.count - 2 {
                if temp.prefix(1) == "-" {
                    result = Int.min
                } else {
                    result = Int.max
                }
            } else {
                result = Int(temp)!
            }
        }
        
        let IntMax = 2<<30
        let IntMin = -IntMax
        if result >= IntMax {
            result = IntMax - 1
        } else if result < IntMin {
            result = IntMin
        }
        return result
    }
    
    class func checkNumber(_ c: Character) -> Bool {
        let legalSet:Set<Character> = ["0","1","2","3","4","5","6","7","8","9"]
        return legalSet.contains(c)
    }
    
    class func checkLegal(_ c: Character) -> Bool {
        let legalSet:Set<Character> = ["+","-","0","1","2","3","4","5","6","7","8","9"]
        return legalSet.contains(c)
    }
    
    class func checkEmpty(_ c: Character) -> Bool {
        return c == " "
    }
}
