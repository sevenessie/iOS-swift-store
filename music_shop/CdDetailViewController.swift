//
//  CdDetailViewController.swift
//  music_shop
//
//  Created by Sevenessie on 29.05.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import UIKit
import AVFoundation

protocol CdDetailViewControllerDelegate {
    func addToBasket(disc: Disc)
}

class CdDetailViewController: UIViewController, UITableViewDelegate, AVAudioPlayerDelegate, UITableViewDataSource {
    


    
    @IBOutlet var cdImageView:UIImageView!
    @IBOutlet var authorLabel:UILabel!
    @IBOutlet var CDNameLabel:UILabel!
    @IBOutlet var cdPrice: UILabel!
    @IBOutlet var buy:UIButton!
    @IBOutlet var tableView:UITableView!
    @IBOutlet var basketBtn: UIBarButtonItem!
    @IBOutlet var playButton: UIButton!
    
    var basket = Basket()
    var delegate: CdDetailViewControllerDelegate?
    var disc: Disc!
    var player: AVAudioPlayer!


    // player
    @IBAction func playSong(sender: UIButton) {
        
        let sampleFile = disc.listen
        let soundURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sampleFile, ofType: "mp3")!)
        do {
            player = try AVAudioPlayer(contentsOfURL: soundURL)
        } catch {
            print("Sorry, something bad happened :( ")
        }
        
        if player.playing == false {
            player.delegate = self
            player.play()
            sender.setTitle("Stop", forState: .Normal)
        } else {
            player.stop()
            player.currentTime = 0
            sender.setTitle("Play", forState: .Normal)
    }
    }
    
    //buy now button
    
    @IBAction func buyNow(sender: AnyObject) {
        delegate?.addToBasket(self.disc)


//        self.navigationController?.popViewControllerAnimated(true)

    }

    
    // songs list

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return disc.songs.count}
 
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell",
                                                                    forIndexPath: indexPath) as! SongsTableViewCell

        cell.songTitleLabel.text = disc.songs[indexPath.row].name
        
        
        return cell
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool) {
        
    }



    //data about cd

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cdImageView.image = UIImage(named: disc.cover)
        authorLabel.text = disc.artist
        CDNameLabel.text = disc.title
        cdPrice.text = String(disc.price)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    // upper bar
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.title = disc.artist + " - " + disc.title
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    

    

   
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//       
//        if segue.identifier == "cdBasketSegue" {
//            
//            if let indexPath = view.indexPathForSelectedRow {
//                let destinationController = segue.destinationViewController as! BasketViewController
//                destinationController.cdImage = cdImage
//                destinationController.author = author
//                destinationController.cdTitle = cdTitle
//                destinationController.price = price
//            }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    



    }