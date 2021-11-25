//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 🙈 🙊 on 2021/11/23.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet var bmiLable: UILabel!
    @IBOutlet var adviceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLable.text = bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
