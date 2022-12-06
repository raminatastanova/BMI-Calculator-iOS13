//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Рамина Ергалиева on 26.09.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
//contains all logic of calculating the BMI

struct CalculatorBrain {
    
    //we gonna put everything that required to calculate our BMI,to interpret bmi, provide advice and provide approptiate color
    var bmi :BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace //returning the value to view controller as string
    }
        //calcutatin bmi in separate struct
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / (height * height) //creating temporary constant
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)) //creating bmi using BMI struct and using initializers to fill in each of this values
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are healthy", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Count your calories", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
        
        
       
    }
    
}
