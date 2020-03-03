//
//  TableViewController.swift
//  PhotoGallery
//
//  Created by Alberto Mancarella on 2/27/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit
import AVFoundation

class TableViewController: UITableViewController, UINavigationControllerDelegate{

    
    var photos:[PhotoClass] = [PhotoClass]()
    
    
    
    override func viewDidLoad() {

    }




        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photos.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 200 //or whatever you need
    }
    
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        
//        cell.textLabel?.text = country.name
//         cell.detailTextLabel?.text = country.isoCode
//         cell.imageView?.image = UIImage(named: country.isoCode)

        let description = photos[indexPath.row].description
        print("the description is \(description)")
        
        
        let date = photos[indexPath.row].date
        let photo  = photos[indexPath.row].photo

        cell.textLabel?.text = description
        cell.imageView?.image = photo
        cell.detailTextLabel?.text = "\(date)"

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
       override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! TakePhotoController
        if let indexPath =
            self.tableView.indexPathForSelectedRow{
            let currentPhoto = self.photos[indexPath.row]
            destination.currentPhoto = currentPhoto
        }
        
        else{
            let currentPhoto = PhotoClass()
            photos.append(currentPhoto)
            destination.currentPhoto = currentPhoto
            print(photos)
        }

        
    }
        
    
        


        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }



