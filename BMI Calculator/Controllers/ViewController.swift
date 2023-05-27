

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
@IBOutlet weak var resultTemporary: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        heightValueLabel.text = "\(String(format: "%0.2f", sender.value))m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightValueLabel.text = "\(String(format: "%0.0f", sender.value))kg"
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.01f", bmi)
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    
}

