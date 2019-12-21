//
//  TableViewController.swift
//  apiApp
//
//  Created by Alberto Mancarella on 12/20/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var list: [Starwars] = [Starwars]()
    func catchdata(){
         let url: URL = URL(string: "https://swapi.co/api/films/")!
            let responseData: Data? = try? Data(contentsOf: url)
            if let responseData = responseData {
                let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
                if let json = json {
                    let dictionary: [String: Any]? = json as? [String: Any]
                    if let dictionary = dictionary {
                        var movies: [[String:Any]] = dictionary["results"] as! [[String : Any]]
                        for movie in movies{
                            var t = movie["title"] as? String
                            var d = movie["director"] as? String
                            var m = Starwars(title: t as! String, director: d as! String)
                            list.append(m)
                        }
                        //let movies: String = dictionary["results"] as? String
                    }
                }
        }
    }
                        
                        
                        
                    
                        
                        

    override func viewDidLoad() {
        super.viewDidLoad()
        print(catchdata())

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        print(title!)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)


                  let title = list[indexPath.row].title
                  cell.textLabel?.text = title
                  // Configure the cell...
               return cell
           }



//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//

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
     
     
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//        let vc = segue.destination as! ViewController
//            if let indexPath = self.tableView.indexPathForSelectedRow{
//                let currentmovie = self.list[indexPath.row]
//                vc.currentnote = currentmovie
//                
        }
    }

}

