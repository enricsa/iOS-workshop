//: Playground - noun: a place where people can play

import UIKit

///////////
//Variables
///////////

let str = "Hello"
//str = "Ouch!"

var mutableInt = 3
mutableInt = 4

var number: Float
let string: String = "Initial value"

/////////
///Enums
/////////

enum Animal: Int {
    case dog = 1
    case cat = 2
}
var type = Animal.cat

/////////
//Strings
/////////

var nameOne = "Ray"
var nameTwo = "Brian"
var combinedNames = "\(nameOne) and \(nameTwo)!"
var tipString = "2499"
var tipInt = Int(tipString)
tipString = "24.99"
var tipDouble = Double(tipString)

///////
//Arrays
///////

var arr = [nameOne, nameTwo]
arr.append("Roman")

for name in arr {
    print(name)
}

//////
//Dicts
//////

var dict:[String: String] = ["key1": "value1",
                             "key2": "value2",
                             "key3": "value3" ]
dict["key3"] = "newValue3"
dict["key2"] = nil

for (key, value) in dict {
    print("key: \(key), value: \(value)")
}

//////
//Flow
//////

if mutableInt == 4 {
    print("ok")
}

switch str {
    case "Hello":
        print("isHello")
        break
    case "Bye":
        print("isntHello")
        break
    default:
        print("")
}

for i in 0..<3 {
    mutableInt += 1
}

print(mutableInt)

