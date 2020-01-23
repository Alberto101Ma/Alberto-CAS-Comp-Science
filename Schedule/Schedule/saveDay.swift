//
//  saveDay.swift
//  Schedule
//
//  Created by Alberto Mancarella on 1/20/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import Foundation



func getWeekDayURL() -> URL{
    let documentURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    return documentURL.appendingPathComponent("weekDay.txt")
}

func getDayTypeURL() -> URL{
    let documentURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    return documentURL.appendingPathComponent("dayType.txt")
}






//plan: if it's monday, tuesday, wednessday, thursday, or friday, get the last saved data of dayTypeURL, and add one.





