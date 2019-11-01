//
//  ViewController.swift
//  Schedule
//
//  Created by Alberto Mancarella on 10/23/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//



//Did extra work: finished ENTIRE code, not just assignment -> "Display afternoon classes"


import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    var curDayType = "A"
    var curWeekday = "Monday"
    var curSchedule = "Regular"
    
    
    let dayTypes = ["A", "B", "C"]
        let weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
        let schedule = ["Regular", "Double", "Assembly"]
      
    let mySchedule: [String:String] =
                    ["A": "CAS Mandarin",
                     "B": "CAS CS",
                     "C": "English 3H",
                    "E": "CAS OChem",
                    "F": "Trig Honors"]
    
    let afternoonSchedule : [String:String] =
                        ["Monday": "Music Theory 3",
                        "Tuesday": "Keyboard",
                        "Wednesday": "Music Theory 3",  "Thursday": "Life Skills",
                            "Friday": "Free Period"]

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 3
    }
      
    
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          if component == 0{
              return dayTypes.count
          }
          else if component == 1{
              return weekdays.count
          }
          else{
              return schedule.count
          }
      }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
                  if component == 0{
                      return dayTypes[row]
        
                  }
                  else if component == 1{
                      return weekdays[row]
                  }
                  else{
                     return schedule[row]
                  }
    }


      func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
          if component == 0{
              curDayType = dayTypes[row]
             
          }
          else if component == 1{
              curWeekday = weekdays[row]
             
          }
          else{
              curSchedule = schedule[row]
          
        }}
    
    
    @IBAction func getSchedule(_
        sender: Any) {
        let dayTypeRow = pickerView.selectedRow(inComponent: 0)
        let whichdays =
            pickerView.selectedRow(inComponent:2)
        let ACBDay = dayTypes[dayTypeRow]
        let differentdaytime = schedule[whichdays]

        let periodRotation:[String:[String]] = [
            "A":["A","B","D","E"],
            "C":["C","A","F","D"],
            "B":["B","C","E","F"]
            ]
        var scheduletime: [String:[String]] = [ "Regular":["8:15-9:10", "9:15-10:10", "10:30-11:25","11:30-12:25", "1:10-3:00"],
            
            "Double":["8:15-9:50","11:10-12:45", "12:45-1:20","1:25-3:00"],
            
        "Assembly":["8:15-9:05","9:10-10:00","11:00-11:50","11:55-12:45","1:15-3:00"]

    ]
        let mySched = getScheduleForDay(periods:periodRotation[ACBDay]!, mySchedule: mySchedule, time: scheduletime[differentdaytime]!)
        label.text = mySched
    }
    
    
    func getScheduleForDay(periods:[String], mySchedule:[String:String],time:[String]!) -> String{
        var output = ""
    
        
        var whatday = pickerView.selectedRow(inComponent:2)
        var getday = (schedule[whatday])
        
        
        if getday == "Double"{
            
            var morningclasses = periods[0]
            var middayclasses = periods[2]
            
            output += " \(time[0]): \(morningclasses) "
            output += mySchedule[morningclasses] ?? "Free Period"
            output+="\n"
             output += " \(time[1]): \(middayclasses) "
            output += mySchedule[middayclasses] ?? "Free Period"
            output+="\n"
        }
        
        else{
            let sequence = zip(time, periods)
            for (eachtime, period) in sequence{
                output += " \(eachtime): \(period)  "
                output +=  mySchedule[period] ?? "Free Period"
            output += "\n"
            }
        }
        
    
        //afternoon arts classes
        var dayoftheweek = pickerView.selectedRow(inComponent: 1)
        var getcurrentday = (weekdays[dayoftheweek])
        var finalafternoonclass = afternoonSchedule[getcurrentday]
        
        output +=  " \(time.last!): \(finalafternoonclass!) "
        return output
    
    }
}

        
        
        

      
      
