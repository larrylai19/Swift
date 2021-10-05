//
//  main.swift
//  HelloSwift
//
//  Created by Larry - 1024 on 2021/10/5.
//

import Foundation

//let interestingNumbers = [
//    "Prime": [2, 3, 5, 7, 11, 13],
//    "Fibonacci": [1, 1, 2, 3, 5, 8],
//    "Square": [1, 4, 9, 16, 25]
//]
//
//var max = Int.min
//var str = ""
//
//for ob in interestingNumbers {
//    let tmp = ob.value.max()!
//    if tmp > max {
//        max = tmp
//        str = ob.key
//    }
//}
//
//print("Largest is \(max) in \(str)")

var listen = 0

repeat {
    print("A:有沒有聽到~ ", terminator: "")
    listen = Int(arc4random_uniform(2))
    
    if listen == 0 {
        print("B:...")
    }
    else {
        print("B:有聽到")
    }
} while listen == 0
