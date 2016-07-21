//
//  BasketPositionTableViewCell.swift
//  music_shop
//
//  Created by Sevenessie on 30.05.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import UIKit

protocol CartTableViewCellDelegate {
    func minusOne(sender: AnyObject)
    
    func plusOne(sender: AnyObject)
}
class BasketPositionTableViewCell: UITableViewCell {
    
    @IBOutlet var cdImageView:UIImageView!
    @IBOutlet var authorLabel:UILabel!
    @IBOutlet var CDNameLabel:UILabel!
    @IBOutlet var cdPrice: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
