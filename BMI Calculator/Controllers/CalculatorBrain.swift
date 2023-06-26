import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / (height * height)
        bmi = BMI(value: bmiValue, advice: "abc", color: UIColor.cyan)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are healthy", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat Less", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "default advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}
