# RGBWell

RGBWell Readme

Initial commit implements an OS X single window application supported by a MainWindowController object.

Second commit implements 4 sliders and a color well within the window, using the MainWindowController object’s windowDidLoad() to initialize the sliders from 4 instance variables r, g, b and a. The sliders target action methods within the MainWindowController object; each action method updates either r, g, b or a, then calls updateColor() to generate a new color for the color well.

Third commit implements an RGBWellModel class which declares 4 dynamic var r, g, b, a and a computed dynamic var newColor. Our implementation of RGBWellModel implements keyPathsForValuesAffectingNewColor() to express newColor as a function of r, g, b, a. We instantiate one instance of this class in Interface Builder and bind the sliders to r, g, b, a; we bind the color well color to newColor. With the objects bound, we delete all the code that the second commit added to MainWindowController. We also delete the corresponding outlet and action method connections from MainWindowController.xib
