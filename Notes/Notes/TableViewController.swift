//
//  TableViewController.swift
//  Notes
//
//  Created by Alberto Mancarella on 11/15/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var notes:[Note] = [Note]()
    override func viewDidLoad() {
        super.viewDidLoad()
        var note = Note()
        note.note = "Note 1"
        notes.append(note)
        
        let note2 = Note()
        note2.note = "Note 2"
        notes.append(note2)
        
        print(notes)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return notes.count
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        
        let title = notes[indexPath.row].note
     cell.textLabel?.text = title

        
        // Configure the cell...

        return cell
    }
    
    @IBAction func newnote(_ sender: Any) {
        
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
     
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    let vc = segue.destination as! ViewController
        if let indexPath = self.tableView.indexPathForSelectedRow{
            let currentnote = self.notes[indexPath.row]
            vc.currentnote = currentnote

        }
        else{
            let currentnote = Note()
            notes.append(currentnote)
            vc.currentnote = currentnote
            
        }

    
    }
}
