//
//  RGBWellModel.swift
//  RGBWell
//
//  Created by Tom Bernard on 5/31/15.
//  Copyright (c) 2015 Bersearch Information Services. All rights reserved.
//

import Cocoa

class RGBWellModel: NSObject {
    
    
    dynamic var r = 0.5
    dynamic var g = 0.5
    dynamic var b = 0.5
    dynamic var a = 1.0

    dynamic var newColor: NSColor {
        return NSColor(calibratedRed: CGFloat(r),
            green: CGFloat(g),
            blue: CGFloat(b),
            alpha: CGFloat(a))
    }
    
    class func keyPathsForValuesAffectingNewColor() -> NSSet {
        return Set(["r", "g", "b", "a"])
    }
}
