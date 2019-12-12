import UIKit
// website = online.swiftplayground.run


//Page 1 of the Syntax notes of Swift
//By Alberto


//Variables

//var value can be change
//let is pernament in Swift

var test: String = "Hello, playground"

//once you declare var, you don't need to say var again if you re-define a variable, because the computer knows that it's a var.


test = "Goodbye, playground"

var speed: Int
speed = 3
//speed = "3" would be wrong, because it is not an integer. "" is a string. The type of variable must always stay the same.


//-------------------------------------------------------------------------------
//Optionals

//What is the purpose of an optional? An optional can be used as a placeorder for situations where there is a missing value! A regular variable REQUIRES a value

//Can Unwrap and find value from Nil, instead of crashing the app.

//nil - non-existent-object

//Syntax -> ! is to force unwrap an optional (extracting a value from an optional) DANGEROUS warning! Read end of this section for more info


// (A ?? B) --? first tries a and then gets to b if a fails


var amianoptional: String?
//declaring optionls
print(amianoptional)
//prints nil because it is an optional and because no value has been declared. So, the variable is nil as a default

//REMEMBER optional as in "optional value""
//If you removed the question mark after String, the program would crash completely, because a regular variable NEEDS a value.

var experiment: String? = "asdf"
print(experiment)
print(experiment!)
var total = Int(experiment!) ?? 4 //! is MAKE IT AN INTEGER! You are basically adding a non-optional type value to the variable. Note: you need to unwrap the experiment optional first!

print(Int(experiment!))
//Shows proof that it is nill, because the object is NON EXISTENT! CANNOT
//make a text string an integer

print(total)
//chooses the 2nd option after the (   ??   ), since the first is nill


print(Int("11")!)

//Also final optional note. If you have a situation that you are turning a string to an integer, for example, swift will automatically output an optional. This is due that instead of the 11, that value can potentially contain other values that simply can't exist (nil). So you have to unwrap it! What swift is doing in the background is kinda like --> (a number ?? nil)

//BE CAREFUL HOWEVER!
//You can't do this --> print(Int("ASDF")!)
//ERROR: Unexpectedly found nil while unwrapping an Optional value
//The program expected to find a value after unwrapping the optional (automatically defined)
//but STILL found nill. After UNWRAPPING an optional, make sure you get an actual value! In this example, the integer of string "asdf" DOESN'T EXIST! IT CANT WORK!

//In summary: don't try to unwrap nil!
//Don't do: print(nil!)

//Ex:
//var thiswillcrash: String?
//print(thiswillcrash!)



//-------------------------------------------------------------------------------
//Ways of unwrapping optionals
//way 1

var painInTheButt: Int? = 100
//painInTheButt + 100
//won't work, because you can't add optionals with non optionals!
//YOU CANT ALSO ADD A STRING OPTIONAL WITH A INTEGER, SAME VARIABLE RULES APPLY
//you need to unwrap optionals first
//Declaring inital painInTheButt variable
//painInTheButt = null



var newValue: Int

if painInTheButt != nil {
    newValue = painInTheButt! + 100

} else {
    newValue = 100
}
print(newValue)

//way 2


var anotherNewValue: Int
var test123: Int?
//If it was test123: String?, the code would crash, because you cannot add a String with an Integer
if let unwrapped = test123 {
    anotherNewValue = unwrapped + 1000
    //try to run this if it works)
} else{
    anotherNewValue = -50
    
}

print(anotherNewValue)


//way 3
let yetAnotherValue: Int = (painInTheButt! ?? 7 * 2000)
//easiest way to write


//last example of easiest way
var x: String? = "4asdf"
var optional = (Int(x!) ?? 3)
//Must unwrap x, so you can actually use x.

print(optional)
//tries to do left first


//You don't actually need to declare an optional in that situation! This works as well!
print(Int("test") ?? "This doesn't work!")
print(Int(3) ?? "This does work!")




//-------------------------------------------------------------------------------
//For x in
for x in 1...5{
    print(x)
}
//prints every instance of x

//-------------------------------------------------------------------------------
//Functions
//Easy Example

func square(number: Int) -> Int {
    let square=number*number
    return square
}
print(square(number: 5))


//A little harder example

func fullName(firstname: String, lastname: String) -> String {
    let fullname = firstname + " " + lastname
    return fullname
}
print(fullName(firstname: "Alberto", lastname: "Mancarella"))


//Hard Example for functions

func numberName(inputnumber: Int) -> String{
    if (inputnumber == 1){
        return "one"
    }
    else if (inputnumber == 2) {
        return "two"
    }
    else if  (inputnumber == 3) {
        return "three"
        
    } //and so on...
    else{
        return "null"
    }
}

print(numberName(inputnumber:4))
//-------------------------------------------------------------------------------
//Arrays

var oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]

oddNumbers.insert(17, at: 8)
print(oddNumbers) //Adds 17 to the list


oddNumbers.remove(at: 5)
//removes 11

oddNumbers.count
//counts list


print(oddNumbers[1])
//listname[whichnumber]

//prints item number 1 of oddNumbers (3)


//-------------------------------------------------------------------------------
//Dictionaries

//Key: Value

var emptyDict: [String: String] = [:]
//creates empty dictionary


var responseMessages = [200: "OK",
403: "Access forbidden",
404: "File not found",
500: "Internal server error",
    12:"test"]

//this is a var responseMessages = [Int: String]

print(responseMessages[500])
// dictionaryname[key]
//add ! to get rid of the optional

print(responseMessages[500]!)


responseMessages.updateValue("WARNING", forKey: 14)
//(value: key
print(responseMessages)

//use either of the 2 to create/update a new value in a dictionary


responseMessages[12] = "IDK"
print(responseMessages)



responseMessages.removeValue(forKey: 403)
print(responseMessages)
//remove value





//-------------------------------------------------------------------------------
//Arrays + Dictionaries

let drinks = ["Soft Drinks": ["Cocoa-Cola", "Mountain Dew", "Sprite"],
"Juice" :["Orange", "Apple", "Grape"]]
//-------------------------------------------------------------------------------


let xrds: [String: Any] = [
    "name": "Crossroads School",
    "foundyear": 1971,
    "campuses": [
        "Norton",
        "21st Street"
    ]
]



//xrds = ["name": "Crossroads"]
//automatically [String:String]
//xrds["founding"] = 1971 WONT work, because it won't be a String String


//note: array and list is the same thing!



let name0 = xrds["name"]
//not really useful


let name1 = xrds["name"] as! String
//very dangerous!


let name2 = xrds["name"] as? String
//safest way if you dont know what the input is
//returns nil if xrds is NOT a string


print(name0)
print(name1)
print(name2)

//two-fold
