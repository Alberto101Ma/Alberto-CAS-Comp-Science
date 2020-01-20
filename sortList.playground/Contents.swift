import UIKit
import Foundation


//does not require initializer
//struct cannot change (function modifies a copy of the struct)
//class can be change

struct StarWars {
    let title: String
    let releasedate: Int
}

let movielist: [StarWars] = [
    StarWars(title: "A New Hope", releasedate: 1977),
    StarWars(title: "The Empire Strikes Back", releasedate: 1980),
    StarWars(title: "Return of the Jedi", releasedate: 1983)
]

func sortByReleaseDay(a: StarWars, b: StarWars) -> Bool {
    if a.releasedate == b.releasedate{
        return a.releasedate < b.releasedate
    } else{
        return a.releasedate < b.releasedate
        
    }
}

let sortedList = movielist.sorted(by: sortByReleaseDay)
print(sortedList)

