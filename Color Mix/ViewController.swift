//
//  ViewController.swift
//  Color Mix
//  Moiz's Color Mix


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        setText()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        setColor()
        setText()
    }
    @IBAction func switchChanged(_ sender: UISwitch){
        setColor()
    }
    
    func setColor() {
        let red: CGFloat = redSwitch.isOn ? CGFloat(redSlider.value) : 0
        let green: CGFloat = greenSwitch.isOn ? CGFloat(greenSlider.value) : 0
        
        let blue: CGFloat = blueSwitch.isOn ? CGFloat(blueSlider.value) : 0
        let color = UIColor(red: red, green: green, blue: blue, alpha: 0.49)
        self.view.backgroundColor = color
    }
    
    func setText() {
        let red = Int(redSlider.value * 100)
        let green = Int(greenSlider.value * 100)
        let blue = Int(blueSlider.value * 100)
        redLabel.text = "\(red)%"
        greenLabel.text = "\(green)%"
        blueLabel.text = "\(blue)%"
        
    }
}


