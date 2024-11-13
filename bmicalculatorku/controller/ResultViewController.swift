//
//  ResultViewController.swift
//  bmicalculatorku
//
//  Created by Anang Kurniawan on 13/11/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiValueLabel: UILabel!
    
    var bmiValue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiValueLabel.text = String(format: "%.1f", bmiValue)
    }
    
    @IBAction func onClickRecalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
