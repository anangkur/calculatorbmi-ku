//
//  Calculatorbrain.swift
//  bmicalculatorku
//
//  Created by Anang Kurniawan on 13/11/24.
//

struct CalculatorBrain {
    
    private var bmi: Float = 0.0
    
    mutating func calculateBmi(height: Float, weight: Float) {
        self.bmi = weight / (height * height)
    }
    
    func getBmi() -> Float {
        return bmi
    }
}
