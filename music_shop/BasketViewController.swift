//
//  BasketViewController.swift
//  music_shop
//
//  Created by Sevenessie on 30.05.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import UIKit

class BasketViewController: UIViewController, UITableViewDataSource,
    UITableViewDelegate {

   
    @IBOutlet var tableView:UITableView!
    @IBOutlet var continue_shopping:UIButton!
    
//        @IBOutlet var cdImageView:UIImageView!
//        @IBOutlet var authorLabel:UILabel!
//        @IBOutlet var CDNameLabel:UILabel!
//        @IBOutlet var cdPrice: UILabel!
    
//        var cdImg = ""
//        var auth =  ""
//        var cdTit = ""
//        var prc = ""
  
    var basket: Basket!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
//        
//        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CartTableViewCell
//            
//            let currentDisc = Array(cart.cartContent.keys)[indexPath.row]
//            let currentAmount = Array(cart.cartContent.values)[indexPath.row]
//            
//            cell.delegate = self
//            
//            cell.artistLabel.text = currentDisc.artist
//            cell.titleLabel.text = currentDisc.title
//            cell.categoryLabel.text = currentDisc.category
//            cell.coverImage.image = UIImage(named: currentDisc.cover)
//            cell.amountStepper.value = Double(currentAmount)
//            cell.oldValue = Double(currentAmount)
//            
//            cell.amountLabel.text = String(Array(cart.cartContent.values)[indexPath.row])
//            
//            return cell
//        }
//        // Do any additional setup after loading the view.
//    }
//
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int)
            -> Int {
                return basket.basketContent.count
   
                
    }
        
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
    
    let currentDisc = Array(basket.basketContent.keys)[indexPath.row]
    let currentAmount = Array(basket.basketContent.values)[indexPath.row]
    
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell",
                forIndexPath: indexPath) as! BasketPositionTableViewCell
            cell.authorLabel.text = currentDisc.artist
            cell.cdImageView.image = UIImage(named: currentDisc.cover)
            cell.cdPrice.text = String(currentDisc.price)
    
//            // Configure the cell...
////
//            cell.cdImageView.image = UIImage(named: cdImg)
//            cell.authorLabel.text = 
//            cell.CDNameLabel.text = cdTit
//            cell.cdPrice.text = prc
//    
//
    
            
            return cell
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
