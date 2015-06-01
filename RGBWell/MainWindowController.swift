//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Tom Bernard on 5/31/15.
//  Copyright (c) 2015 Bersearch Information Services. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var colorWell: NSColorWell!
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    @IBOutlet weak var aSlider: NSSlider!
    
    var r = 0.5
    var g = 0.5
    var b = 0.5
    var a = 1.0
    
    
    override var windowNibName: String {
        return "MainWindowController"
    }
 
    
    override func windowDidLoad() {
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
        super.windowDidLoad()
        
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSlider.doubleValue = b
        aSlider.doubleValue = a
        
        updateColor()
        
        
    }
    
    
    // MARK: - helper methods
    
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r),
            green: CGFloat(g),
            blue: CGFloat(b),
            alpha: CGFloat(a))
        
        colorWell.color = newColor
    }
    
    
    // MARK: - action methods
    
    
    @IBAction func adjustRed(sender: NSSlider) {
        println("Red slider value is \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }
    
    
    @IBAction func adjustGreen(sender: NSSlider) {
        println("Green slider value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
    }
    
    
    @IBAction func adjustBlue(sender: NSSlider) {
        println("Blue slider value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    
    @IBAction func adjustAlpha(sender: NSSlider) {
        println("Alpha slider value is \(sender.floatValue)")
        a = sender.doubleValue
        updateColor()
    }
}
