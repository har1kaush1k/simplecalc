//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        if(args[args.count - 1] == "count" || args[args.count - 1] == "fact" || args[args.count - 1] == "avg"){
            let operation = args[args.count - 1]
            if(args.count == 1){
                return 0
            }
            if(operation == "count"){
                var count = 0
                for s in args {
                    let i = Int(s)
                    if (i as? Int) != nil {
                        count += 1
                    }
                }
                return count
            }
            else if (operation == "avg"){
                var count = 0
                var sum = 0
                for index in 0...args.count-2 {
                    let i = Int(args[index])
                    count += 1
                    sum += i!
                }
                return sum / count
            }
            else if (operation  == "fact") {
                var total = 1
                for index in 0...args.count-2 {
                    let i = Int(args[index])
                    total *= i!
                }
                return total
            }
        }
        else if(args.count == 3){
            let first = Int(args[0])
            let second = Int(args[2])
            if(args[1] == "+"){
                return first! + second!
            }
            else if(args[1] == "-"){
                return first! - second!
            }
            else if(args[1] == "*"){
                return first! * second!
            }
            else if(args[1] == "/"){
                return first! / second!
            }
            else if(args[1] == "/"){
                return first! / second!
            }
            else if(args[1] == "%"){
                let q = first! / second!
                return first! - (q * second!)
            }
        }
        return 0
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
    }
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))

