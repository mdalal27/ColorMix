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
    
    @IBOutlet weak var secretImageView: UIImageView!
    @IBOutlet weak var secretColorView: UIView!
    
    
    var redSecret: CGFloat = 0.0
    var greenSecret: CGFloat = 0.0
    var blueSecret: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        setText()
        setSecrets()
        setSecretColor()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        setColor()
        setText()
        checkMatch()
    }
    
    @IBAction func switchChanged(_ sender: UISwitch){
        setColor()
    }
    
    
    func setSecrets() {
        redSecret = CGFloat.random(in: 0...1)
        greenSecret = CGFloat.random(in: 0...1)
        blueSecret = CGFloat.random(in: 0...1)
        
        print("secrets are:")
        print(percent(redSecret))
        print(percent(greenSecret))
        print(percent(blueSecret))
    }
    
    func setColor() {
        let red: CGFloat = redSwitch.isOn ? CGFloat(redSlider.value) : 0
        let green: CGFloat = greenSwitch.isOn ? CGFloat(greenSlider.value) : 0
        
        let blue: CGFloat = blueSwitch.isOn ? CGFloat(blueSlider.value) : 0
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        self.view.backgroundColor = color
    }
    
    func setText() {
        let red = percent(redSlider.value)
        let green = percent(greenSlider.value)
        let blue = percent(blueSlider.value)
        redLabel.text = "\(red)%"
        greenLabel.text = "\(green)%"
        blueLabel.text = "\(blue)%"
        
    }
    
    func checkMatch() {
        if (percent(redSlider.value) == percent(redSecret))
            && (percent(greenSlider.value) == percent(greenSecret))
            && (percent(blueSlider.value) == percent(blueSecret)) {
            secretImageView.isHidden = false
            print("Congrats You Have Discovered the Secret Code!")
        } else {
            secretImageView.isHidden = true
        }
    }
    
    func setSecretColor() {
        let color = UIColor(red: redSecret, green: greenSecret, blue: blueSecret, alpha: 1)
        secretColorView.backgroundColor = color
    }
    
    // cited code
    // https://github.com/liamrosenfeld
    func percent<T: BinaryFloatingPoint>(_ num: T) -> Int {
        return Int(num * 100)
    }
    // end cited code
}



