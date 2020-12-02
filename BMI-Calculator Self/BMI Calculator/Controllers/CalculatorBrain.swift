//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Özkan Adar on 23/05/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    var bmiString: String?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiCalc = weight / pow(height, 2)
        bmiString = String(format: "%.1f", bmiCalc)
        if bmiCalc < 18.5 {
            bmi = BMI(value: bmiString, comment: "Eat more pie!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiCalc >= 18.5 && bmiCalc <= 24.9{
            bmi = BMI(value: bmiString, comment: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiString, comment: "Eat less pie!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String{
        return bmiString!
        
    }
    
    func getComment() -> String{
        bmi?.comment ?? "There is an error"
    }
    
    func getColor() -> UIColor{
        bmi?.color ?? UIColor.black
    }
}
