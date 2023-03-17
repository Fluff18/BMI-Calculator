//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Luminosity on 3/16/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2.0)
        if bmiValue < 18.5 {
            print("Underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more Icecream", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            print("Perfect")
            bmi = BMI(value: bmiValue, advice: "Perfect", color: UIColor.green)
        } else {
            print("Overweight")
            bmi = BMI(value: bmiValue, advice: "Eat less Icecream", color: UIColor.red)
        }
//        bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    func getBMIValue() -> String {
        let bmiDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimal
    }
    
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
}
