//
//  Disc.swift
//  music_shop
//
//  Created by Sevenessie on 10.06.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

//
//  disc.swift
//  music_shop
//
//  Created by Sevenessie on 10.06.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//

import Foundation

class Disc: Equatable, Hashable {
    var artist = ""
    var title = ""
    var cover = ""
    var category = ""
    var price: Double
    var songs = [Song]()
    var listen = ""
    
    var hashValue: Int {
        return artist.hash
    }
    
    init(artist: String, title: String, cover: String, category: String, price: Double, listen: String) {
        self.artist = artist
        self.title = title
        self.cover = cover
        self.category = category
        self.price = price
        self.listen = listen
    }
    
    init(artist: String, title: String, cover: String, category: String, price: Double, songs: [Song], listen: String) {
        self.artist = artist
        self.title = title
        self.cover = cover
        self.category = category
        self.price = price
        self.listen = listen
        self.songs = songs
    }
}

func ==(lhs: Disc, rhs: Disc) -> Bool {
    return lhs.artist == rhs.artist && lhs.title == rhs.title
}