//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 🙈 🙊 on 2021/11/23.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    func getBMIvalue() -> String {
            let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
            return bmiTo1DecimalPlace
        
        }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    
}
