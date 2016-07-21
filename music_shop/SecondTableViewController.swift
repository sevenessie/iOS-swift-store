//
//  SecondTableViewController.swift
//  music_shop
//
//  Created by Sevenessie on 29.05.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
//    var authorNames = ["Bokka", "Hozier", "Selena Gomez", "Iron and Wine", "Kygo", "Ellie Goulding", "Florence and The Machine", "The XX", "Beyonce", "Arctic Monkeys", "Adele", "Sia"]
//    
//    var cdNames = ["Bokka", "Hozier", "Revival", "Our endless numbered days", "Cloud nine", "Lights", "Ceremonials", "The XX-XX", "Lemonde", "Arctic Monkeys", "25", "This is acting"]
//    
//    var categoryNames = ["Category 1","Category 2", "Category 3", "Category 4", "Category 5"]
    
    let discs = [
        // Disc 1
        Disc(artist: "BOKKA",
            title: "BOKKA",
            cover: "BOKKA.jpg",
            category: "Alternative",
            price: 45.99,
            songs: [
                Song(name: "1. Town of Strangers"),
                Song(name: "2. Bokka")],
                listen: "BOKKA Town of Strangers"
                
            ),
        
        Disc(artist: "Hozier",
            title: "Arsonist's Lullaby",
            cover: "Hozier.jpg",
            category: "Indie Rock",
            price: 99.99,
            songs: [
                Song(name: "1. Arsonist's Lullaby"),
                Song(name: "Someone New")],
            listen: "Hozier - Arsonist's Lullaby"
        ),
        
        Disc(artist: "Selena Gomez",
            title: "Revival",
            cover: "Selena Gomez.jpg",
            category: "Pop",
            price: 65.99,
            songs: [
                Song(name: "1. Perfect"),
                Song(name: "2. Kill'em with kindness")],
            listen: "Selena Homez - Perfect"),
        
        Disc(artist: "Iron and Wine",
            title: "Our endless numbered days",
            cover: "Iron and Wine.jpg",
            category: "Alternative",
            price: 105.99,
            songs: [
                Song(name: "1. Cinder and smoke"),
                Song(name: "2, Lady's House")],
            listen: "Iron & Wine - Cinder and Smoke" ),

        Disc(artist: "Kygo",
            title: "Cloud nine",
            cover: "Kygo.jpg",
            category: "House",
            price: 45.99,
            songs: [
                Song(name: "1. Wait"),
                Song(name: "2. Raging")
            ],
            listen: "Kygo - Wait"),
        
        Disc(artist: "Ellie Goulding",
            title: "Lights",
            cover: "Ellie Goulding.jpg",
            category: "Pop",
            price: 45.99,
            songs: [
                Song(name: "1. Burn"),
                Song(name: "2. I need your love")
            ],
            listen: "Ellie Goulding - Burn"),
        
        Disc(artist: "Florence and The Machine",
            title: "Ceremonials",
            cover: "Florence and The Machine.jpg",
            category: "Alternative",
            price: 45.99,
            songs: [
                Song(name: "1. No light, No light"),
                Song(name: "2. Dog days are over")
            ],
            listen: "Florence and The Machine - No Light, No Light"),
        
        Disc(artist: "The xx",
            title: "xx",
            cover: "Thexx.jpg",
            category: "Alternative",
            price: 45.99,
            songs: [
                 Song(name: "1. Shelter"),
                Song(name: "2. Intro")
            ],
            listen: "The xx - Shelter"),
        
        
        Disc(artist: "Beyonce",
            title: "Lemonade",
            cover: "Beyonce.jpg",
            category: "Pop",
            price: 45.99,
            songs: [
                Song(name: "1. Crazy in love"),
                Song(name: "2. Hello")
            ],
            listen: "Beyonce - Drunk in Love"),
        
        Disc(artist: "Arctic Monkeys",
            title: "Arctic Monkeys",
            cover: "Arctic Monkeys.jpg",
            category: "Indie Rock",
            price: 45.99,
            songs: [
                Song(name: "1. Do I wanna know?"),
                Song(name: "2. R u mine?")
            ],
            listen: "Arctic Monkeys - Do I Wanna Know"),
        
        Disc(artist: "Adele",
            title: "21",
            cover: "Adele.jpg",
            category: "Pop",
            price: 45.99,
            songs: [
                Song(name: "1. Hello"),
                Song(name: "2. Rolling in the deep")
            ],
            listen: "Adele - Hello"),
        
        Disc(artist: "Sia",
            title: "This is acting",
            cover: "Sia.jpg",
            category: "Alternative",
            price: 45.99,
            songs: [
                Song(name: "1. Elastic heart"),
                Song(name: "2. Chandelier")
            ],
            listen: "Sia - Elastic Heart"),
        ]

        var basket: [Basket] = []
        var categoryNames = ["Alternative","Indie Rock", "Pop", "House"]
        var uniqueCategories: [String] {
        get {
            let categories: [String] = discs.map({$0.category})
            let uniqueCategories = Set(categories)
            let sortedCategories = uniqueCategories.sort()
            return Array(sortedCategories)
                }
            }
        @IBOutlet var basketBtn: UIBarButtonItem!
    
    
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
            return categoryNames.count
    }


//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
//        
//        let categoryName = uniqueCategories[indexPath.row]
//        
//        // Configure the cell...
//        cell.accessoryType = .DisclosureIndicator
//        cell.textLabel?.text = categoryName
//        cell.imageView?.image = scaleUIImageToSize(UIImage(named: getCover(categoryName))!, size: CGSize(width: 75, height: 75))
//        
//        return cell
//    }
    

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier,
        forIndexPath: indexPath)
        
        let categoryName = uniqueCategories[indexPath.row]
        // Configure the cell...
        
        
        cell.textLabel?.text = categoryName
        cell.imageView?.image = UIImage(named: "bokka.jpg")
        return cell }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "categoryToCdList"
        {
            if let destinationController = segue.destinationViewController as? MusicTableViewController
            {
                if let indexPath = tableView.indexPathForSelectedRow
                {
                    let filteringCategory = uniqueCategories[indexPath.row]
                    let filteredDiscs = discs.filter({$0.category == filteringCategory})
                    destinationController.basket = basket
                    destinationController.discs = filteredDiscs
                    destinationController.title = filteringCategory
                }
            }
        
        }
        
//        if segue.identifier == "categoryToBasket"
//        {
//            if let destinationController = segue.destinationViewController as? BasketViewController
//            {
//             //   destinationController.basket = self.basket
//            }
//        }
    }

//    
//override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//    if segue.identifier == "categoryToCdList" {
//    
//        if let destinationController = segue.destinationViewController as? MusicTableViewController
//            {
//                if let indexPath = tableView.indexPathForSelectedRow
//                {
//                    let filterCategory = categoryNames[indexPath.row]
//                    let filteredCd = authorNames.filter({$0.category == filterCategory})
//                    destinationController.discs = filtereDiscs
//                    destinationController.category = filteringCategory
//    
//                }
//    
//            }
//    }}
    

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

}
