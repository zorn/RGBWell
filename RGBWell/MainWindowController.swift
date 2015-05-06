import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var redSlider: NSSlider!
    @IBOutlet weak var greenSlider: NSSlider!
    @IBOutlet weak var blueSlider: NSSlider!
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    var alpha = 1.0
    
    override func windowDidLoad() {
        super.windowDidLoad()
        redSlider.doubleValue = red
        greenSlider.doubleValue = green
        blueSlider.doubleValue = blue
        updateColor()
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        println("R slider's value \(sender.doubleValue)")
        red = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustGreen(sender: NSSlider) {
        println("G slider's value \(sender.doubleValue)")
        green = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        println("B slider's value \(sender.doubleValue)")
        blue = sender.doubleValue
        updateColor()
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
        colorWell.color = newColor
    }
}
