//
//  CDTableViewCell.swift
//  music_shop
//
//  Created by Sevenessie on 29.05.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import UIKit

class CDTableViewCell: UITableViewCell {
    
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var CDNameLabel: UILabel!
    @IBOutlet var TitleLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
