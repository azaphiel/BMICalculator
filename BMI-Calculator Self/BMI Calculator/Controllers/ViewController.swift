//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
   
    
    @IBAction func heightSliderAct(_ sender: UISlider) {
        let height = sender.value
        heightLabel.text =  "\(String(format: "%.2f", height))m"
    }
    
    
    @IBAction func weightSliderAct(_ sender: UISlider) {
        let weight = sender.value
        weightLabel.text = "\(String(format: "%.0f", weight))Kg"
        
    }
    
    

    @IBAction func calculateButton(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        calculatorBrain.calculateBMI(weight: weight, height: height)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.bmiValue = calculatorBrain.getBMIValue()
        destinationVC.bmiComment = calculatorBrain.getComment()
        destinationVC.bmiColor = calculatorBrain.getColor()
    }
    
}

