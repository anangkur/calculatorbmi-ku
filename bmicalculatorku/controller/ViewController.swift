//
//  ViewController.swift
//  bmicalculatorku
//
//  Created by Anang Kurniawan on 06/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightSliderChanged(_ sender: UISlider) {
        let heightString = String(format: "%.2f", sender.value)
        heightValue.text = "\(heightString)m"
    }
    
    @IBAction func onWeightSliderChanged(_ sender: UISlider) {
        let weightString = String(format: "%.0f", sender.value)
        weightValue.text = "\(weightString)Kg"
    }
    
    @IBAction func onButtonCalculateClicked(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
    
}

