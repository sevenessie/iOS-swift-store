//
//  SongsTableViewCell.swift
//  music_shop
//
//  Created by Sevenessie on 29.05.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import UIKit

class SongsTableViewCell: UITableViewCell {
    
    @IBOutlet var songNumberLabel: UILabel!
    @IBOutlet var songTitleLabel: UILabel!
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
