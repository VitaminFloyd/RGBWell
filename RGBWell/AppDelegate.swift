//
//  AppDelegate.swift
//  RGBWell
//
//  Created by Tom Bernard on 5/31/15.
//  Copyright (c) 2015 Bersearch Information Services. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification)
    {
        // Insert code here to initialize your application
        
        // Create a window controller with a XIB file of the same name
        let mainWindowController = MainWindowController()
        
        // Put the window of the window controller on the screen
        mainWindowController.showWindow(self)
        
        // Set the property to point to the window controller
        self.mainWindowController = mainWindowController
    }
    
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

