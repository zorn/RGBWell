import Cocoa

class MainWindowController: NSWindowController {
    
    //MARK: - Properties
    
    dynamic var currentColor: NSColor {
        return NSColor(calibratedRed: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
    }
    dynamic var red = 0.0
    dynamic var green = 0.0
    dynamic var blue = 0.0
    dynamic var alpha = 1.0
    
    //MARK: - NSWindowController
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    //MARK: - NSKeyValueObserving
    
    class func keyPathsForValuesAffectingCurrentColor() -> NSSet {
        return Set(["red", "green", "blue"])
    }
}
