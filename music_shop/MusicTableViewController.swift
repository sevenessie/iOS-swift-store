//
//  MusicTableViewController.swift
//  music_shop
//
//  Created by Sevenessie on 28.05.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import UIKit

class MusicTableViewController: UITableViewController {
    
    var discs: [Disc] = []
    var basket: [Basket] = []
    @IBOutlet var basketBtn: UIBarButtonItem!
    
//    var authorNames = ["Bokka", "Hozier", "Selena Gomez", "Iron and Wine", "Kygo", "Ellie Goulding", "Florence and The Machine", "The XX", "Beyonce", "Arctic Monkeys", "Adele", "Sia"]
//    
//    var cdNames = ["Bokka", "Hozier", "Revival", "Our endless numbered days", "Cloud nine", "Lights", "Ceremonials", "The XX-XX", "Lemonde", "Arctic Monkeys", "25", "This is acting"]
//    
//    var cdPrices = ["29.99", "49.90", "29.99", "49.90", "29.99", "39.90", "89.90", "55.50", "34.90", "35.99", "60.00", "89.90" ]
//    
//    var cdSongs = [["1. Song no 1", "2. Song no 2"], ["3. Song no 3", "4, Song no 4"] ]
//    var hozier_songs = ["3. Song no 3", "4, Song no 4"]

    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section:
        Int) -> Int {
        return discs.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier,
        forIndexPath: indexPath) as! CDTableViewCell
        // Configure the cell...
        cell.authorLabel.text = discs[indexPath.row].artist
        cell.CDNameLabel.text = discs[indexPath.row].title
        cell.thumbnailImageView.image = UIImage(named: discs[indexPath.row].artist)
        return cell
    
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.title = "Available Cd's"
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showCdDetails" {

            
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! CdDetailViewController
               
//                
//                let destinationController = segue.destinationViewController as! CdDetailViewController
//                    destinationController.cdImage = authorNames[indexPath.row]
//                    destinationController.author = authorNames[indexPath.row]
//                    destinationController.cdTitle = cdNames[indexPath.row]
//                    destinationController.price = cdPrices[indexPath.row]
                destinationController.disc = discs[indexPath.row]

        }
            
            
        } }
    


    }
    


    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


