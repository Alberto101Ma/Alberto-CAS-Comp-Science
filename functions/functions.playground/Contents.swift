


func fullName(firstname: String, lastname: String) -> String {
    let fullname = firstname + " " + lastname
    return fullname
}
print(fullName(firstname: "Alberto", lastname: "Mancarella"))



func square(number: Int) -> Int {
    let square=number*number
    return square
}
print(square(number: 5))




func five() -> Int {
    return 5
}
print(five())


func shout(test: String) -> String{
    let shout = test + "!"
    return shout
}
print(shout(test:"Hi"))




func numberName(inputnumber: Int) -> String{
    if (inputnumber == 1){
        return "one"
    }
    else if (inputnumber == 2) {
        return "two"
    }
    else if  (inputnumber == 3) {
        return "three"
    }
    else if (inputnumber == 4) {
        return "four"
    }
    else if (inputnumber == 5) {
        return "five"
    }
    else if (inputnumber == 6){
        return "six"
    }
    else if (inputnumber == 7) {
        return "one"
    }
    
    else if (inputnumber == 8) {
        return "eight"
    }
    
    else if (inputnumber == 9) {
        return "nine"
    }
    else{
        return "null"
    }
}
print(numberName(inputnumber:8))



