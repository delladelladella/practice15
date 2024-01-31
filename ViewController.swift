//
//  ViewController.swift
//  BMI Calculator
//


import UIKit

class CalculateViewController: UIViewController {

    
    //Labels
    @IBOutlet weak var hieghtLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    //Sliders.
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
       // Printing the value of the UISender  with two decimal places.
//        var one =  String(format: "%.2f", sender.value)
//        print(one)
        
        
        //Setting the height label to the value the height slider changes too.
        hieghtLabel.text = String(format: "%.2f", sender.value) + "m"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        // Printing the value of the weight UISender  as a whole number.
//        var two =  String(format: "%.0f", sender.value)
//        print(two)
        
        
        //Setting the weight label to the value the UIslider changes too.
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
       
        
        //Using a custom swift method to square height. Overall calculating the bmi.
        let bmi = weight / pow(height, 2)
        print(bmi)
        
        let secondVC = SecondViewController()
        
        //Sending the value of the bmi in this controller to the bmiValue variable in the next controller. 
        secondVC.bmiValue = String(format: "%.1f", bmi)
        self.present(secondVC, animated: true, completion: nil)
        
    }
    

}

