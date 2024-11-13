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
    
    private var calculatorBrain = CalculatorBrain()
    
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
        calculatorBrain.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let segueDestinationVC = segue.destination as! ResultViewController
            segueDestinationVC.bmiValue = calculatorBrain.getBmi()
        }
    }
}

