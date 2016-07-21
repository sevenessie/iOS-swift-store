//
//  Basket.swift
//  music_shop
//
//  Created by Sevenessie on 11.06.2016.
//  Copyright © 2016 Sevenessie. All rights reserved.
//



import Foundation

protocol BasketDelegate {
    func askIfDelete(disc: Disc, indexPath: NSIndexPath)
}

class Basket {
    
    var basketContent = [Disc: Int]()
    
    var delegate: BasketDelegate?
    
    init() {
        
    }
    
   
    func addToBasket(disc: Disc) -> Void {
        if let content = basketContent[disc] {
            basketContent[disc] = content + 1
        } else {
            basketContent[disc] = 1
        }
    }
    
    func plusOne(indexPath: NSIndexPath) -> Void {
        let disc = getKeyForIndex(indexPath.row)
        basketContent[disc]! += 1
    }
    
    func minusOne(indexPath: NSIndexPath) -> Void {
        let disc = getKeyForIndex(indexPath.row)
        if basketContent[disc] < 2 {
            delegate?.askIfDelete(disc, indexPath: indexPath)
        } else {
            basketContent[disc]! -= 1
        }
    }
    
    func getKeyForIndex(indexInt: Int) -> Disc {
        let index = basketContent.startIndex.advancedBy(indexInt)
        return basketContent.keys[index]
    }
    
    func removeDisc(disc: Disc) {
        basketContent.removeValueForKey(disc)
    }
}