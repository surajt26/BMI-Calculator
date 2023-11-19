//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Suraj KY on 13/11/23.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0, green: 0.490131855, blue: 0.7959402204, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.3241961503, green: 0.3247726332, blue: 0.8823595914, alpha: 1) )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3428195015, green: 0.7909983625, blue: 0.2910036347, alpha: 1) )
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8823595914, green: 0.2739693456, blue: 0.2752036112, alpha: 1) )
        }
    }
}
