import UIKit

let fileUrl =  Bundle.main.url(forResource: "data", withExtension: "json")!
let fileContents = try! Data(contentsOf: fileUrl)


func main(){
    let json = try? JSONSerialization.jsonObject(with: fileContents, options: [])
    
    let dictionary = json as! [String: Any]
    
    let name: String = dictionary["name"] as! String
    let hobbies: [String] = dictionary["hobbies"] as! [String]
    let age: Int = dictionary["age"] as! Int
    
    print("Hello, my name is \(name). I am \(age) years old. My hobbies include: \(hobbies.joined(separator: ", ")).")
}


main()

