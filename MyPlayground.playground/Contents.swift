import UIKit


func test(count: Int) -> Int{
    var count = count
    if count == 0{
        count += 1
        return count
    }
    
    else{
        return 4
    }
}

print(test(count: 1))
