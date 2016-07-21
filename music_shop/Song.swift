//
//  Song.swift
//  music_shop
//
//  Created by Sevenessie on 10.06.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import Foundation

class Song {
    var name = ""
    var sample: String?
    
    init(name: String, sample: String) {
        self.name = name
        self.sample = sample
    }
    
    init(name: String) {
        self.name = name
    }
}