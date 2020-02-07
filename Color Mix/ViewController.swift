//
//  ViewController.swift
//  Color Mix
//
//  Created by WoLf, ChRiStOpHeR (LYHS) on 1/31/20.
//  Copyright © 2020 Ava Wilson . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
    }

    @IBAction func switchChanged(_ sender: UISwitch){
        setColor()
    }
    
    func setColor() {
        let red: CGFloat = redSwitch.isOn ? 1:0
        let green: CGFloat = greenSwitch.isOn ? 1:0
        let blue: CGFloat = blueSwitch.isOn ? 1:0
        let color = UIColor(red: red, green: green, blue: blue, alpha: 0.49)
        colorView.backgroundColor = color
    }
}

