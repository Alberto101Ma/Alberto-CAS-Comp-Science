import UIKit

let x = 1

switch x{
case 0:
    print("x is zero")
case 1:
    print("x is one")
default:
    print("test")
    
}


enum SchoolDay{
    case aDay
    case bDay
    case cDay
}

var today: SchoolDay = .bDay

switch today {
case .aDay:
    print("test")
    
case .bDay:
    print("test")
    
case .cDay:
    print("test")
}

//with enum's, u don't have to provide a "default, since u are specifing all of the cases
print("Hello, today is a \(today)")
