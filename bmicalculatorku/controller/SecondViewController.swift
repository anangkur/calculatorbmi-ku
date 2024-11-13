//
//  SecondViewController.swift
//  bmicalculatorku
//
//  Created by Anang Kurniawan on 13/11/24.
//

import UIKit

class SecondViewController : UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
