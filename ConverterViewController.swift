//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Austin Terranova on 4/11/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBOutlet weak var outputDisplay: UITextField!
    
    struct Converter {
        var label: String
        var inputUnit: String
        var outputUnit: String
    }
    var firstConverter = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                          Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                          Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "°km"),
                          Converter(label: "kilometers to miles", inputUnit: "°km", outputUnit: "°mi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func converter(_ sender: Any) {
        let alert = UIAlertController(title: "choose converter", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.inputDisplay.text = "°F"
            self.outputDisplay.text = "°C"
            
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = "°C"
            self.outputDisplay.text = "°F"
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometeres", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = "mi"
            self.outputDisplay.text = "°km"
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = "km"
            self.outputDisplay.text = "mi"
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
