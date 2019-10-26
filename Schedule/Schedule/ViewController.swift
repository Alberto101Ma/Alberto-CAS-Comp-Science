//
//  ViewController.swift
//  Schedule
//
//  Created by Alberto Mancarella on 10/23/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

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
                     "B": "CAS Comp Science",
                     "C": "English 3H",
                    "E": "CAS OChem",
                    "F": "Trig Honors"]
    
    let afternoonSchedule : [String:String] =
                        ["Monday": "Music Theory 3",
                        "Tuesday": "Keyboard",
                        "Wednesday": "Music",  "Thursday": "Life Skills",
                            "Friday": "Free Period"]
    

    
    
    let whattime : [String:String] =
        ["C1":"8:15-9:10", "C2": "9:15-10:10", "C3": "10:30-11:25", "C4":"11:30-12:25", "C5": "1:10-3:00"]
    

    var time = 3
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
      func numberOfComponents(in pickerView: UIPickerView) -> Int {
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
        let ACBDay = dayTypes[dayTypeRow]
        
        let periodRotation:[String:[String]] = [
            "A":["A","B","D","E"],
            "C":["C","A","F","D"],
            "B":["B","C","E","F"]
            ]
        
        let mySched = getScheduleForDay(periods:periodRotation[ACBDay]!, mySchedule: mySchedule)
        label.text = mySched
    }
            
    func getScheduleForDay(periods:[String], mySchedule:[String:String]) -> String{
        var output = ""
        for period in periods{
            
            output += "\(period) - "
            output += mySchedule[period] ?? "Free Period"
            output += "\n"

            print(time)
    
        }
        
        var dayoftheweek = pickerView.selectedRow(inComponent: 1)
        var getcurrentday = (weekdays[dayoftheweek])
        var finalafternoonclass = afternoonSchedule[getcurrentday]
            
        output += "1:05-3:00: " + finalafternoonclass!
        
        return output
    }
    
    

}
    
    
    

        
        
        

      
      
      
      
      
    
      
      


