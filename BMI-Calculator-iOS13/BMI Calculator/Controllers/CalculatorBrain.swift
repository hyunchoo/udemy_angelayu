//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by π π on 2021/11/23.
//  Copyright Β© 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIvalue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        
        }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "μ΄μ½νμ΄μ’ λλ¨Ήμ΄λΌ", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "λ μ μ", color: UIColor.brown)
        } else {
            bmi = BMI(value: bmiValue, advice: "λ€μ΄μ΄νΈνμ", color: UIColor.red)
        }
        
     //   bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    
}
