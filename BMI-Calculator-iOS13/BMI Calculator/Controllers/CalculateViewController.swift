//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorbrain = CalculatorBrain()
  
    
    @IBOutlet var hightLable: UILabel!
    @IBOutlet var weightLable: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heigtSlider(_ sender: UISlider) {
       let height = String(format: "%.2f", sender.value)
        hightLable.text = "\(height)m"
    }
    

    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLable.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
       let weight = weightSlider.value
       
        calculatorbrain.calculateBMI(height: height, weight: weight )
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorbrain.getBMIvalue()
            destinationVC.advice = calculatorbrain.getAdvice()
            destinationVC.color = calculatorbrain.getColor()
        }
    }
}

