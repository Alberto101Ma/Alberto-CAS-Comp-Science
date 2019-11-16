//
//  TableViewController.swift
//  Boats
//
//  Created by Alberto Mancarella on 11/5/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    
    
    var boats:[Boat] = [
        
        Boat(n: "test", dp:0 , c:"white", s: "large"),
        Boat(n:"test123", dp:123, c:"black", s:"small"),
        
        Boat(n:"Kayak", dp:0, c:"white",   s: "large"),
        
        Boat(n: "monohual", dp:23, c:"blue", s:"medium"),
        
        Boat(n:"Yacht", dp: 320,   c:"pink", s:"Large"),
        
        Boat(n:"Pirate Boat Ship", dp:200,  c:"Black", s: "Extra Large"),
        
        Boat(n:"Raft", dp:3, c:"brown",  s:"really small")
        
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment thef ollowing line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return boats.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let title = boats[indexPath.row].name
        cell.textLabel?.text = boats[indexPath.row].name
        
        // Configure the cell...
        
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    //    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {       // Get the new view controller using segue.destination.
        ////       Pass the selected object to the new view controller.
        let vc = segue.destination as! ViewController
        let indexPath = self.tableView.indexPathForSelectedRow
        
        let currentboat = self.boats[indexPath!.row]
        vc.boat = currentboat
        
        //
        
    }
}

