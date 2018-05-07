//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Austin Terranova on 4/11/18.
//  Copyright © 2018 Austin Terranova. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
   
    //var Delegate: AppDelegate
    @IBOutlet weak var oneButtonP: UIButton!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBOutlet weak var outputDisplay: UITextField!
    var calculation: Double = 0
    var previous: Double = 0
    var buttonPressed = true
    var numberOnScreen: Double? = 0
    var additionPressed = true
    
    struct Converter {
        var label: String
        var inputUnit: String
        var outputUnit: String
        
        
        
    }
    
    //var firstConverter = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                         // Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                          //Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "°km"),
                          //Converter(label: "kilometers to miles", inputUnit: "°km", outputUnit: "°mi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //numbers()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if buttonPressed == true {
            inputDisplay.text = String(sender.tag-1)
            numberOnScreen = Double(inputDisplay.text!)
            buttonPressed = false
            //self.inputDisplay.text = String(self.numberOnScreen!)
            //self.outputDisplay.text = String(self.fToC(numberOnScreen: self.numberOnScreen!))
            //converter(UIButton.self)
        } else {
            inputDisplay.text = (inputDisplay.text!) + String(sender.tag-1)
            numberOnScreen = Double(inputDisplay.text!)!
            //self.outputDisplay.text = String(self.fToC(numberOnScreen: self.numberOnScreen!))
            //converter(UIButton.self)
        }
        
    }
    
    
    @IBAction func additionButton(_ sender: UIButton) {
        if additionPressed == true {
            var addition: String
            addition = "+"
            
          //  String(addition) + String(numberOnScreen!)
            additionPressed = false
            
            
        } else {
            var subtraction: String
            subtraction = "-"
            
           // String(subtraction) + String(numberOnScreen!)
            additionPressed = true
            
        }
        
    }
    
    
    /*
    @IBAction func addition(_ sender: UIButton) {
        
        if var calculation = numberOnScreen {
           // calculation = Double(Int(inputDisplay.text!)! + Double(numberOnScreen!))
        } else {
            //calculation = Int(inputDisplay.text)
        }
        //lastOperator = operatorType.plus
        //firstValue = true
       
        
        outputDisplay.text = String(calculation)
        
    }
 */
 
    
    @IBAction func clearText(_ sender: Any) {
        inputDisplay.text = ""
        outputDisplay.text = ""
        numberOnScreen = 0
        previous = 0
        buttonPressed = false
    }
    @IBAction func converter(_ sender: Any) {
        let alert = UIAlertController(title: "choose converter", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            //var converted = self.fToC(numberOnScreen: self.numberOnScreen!)
            //self.numbers(alertAction)
            self.inputDisplay.text = String(self.numberOnScreen!)
            self.outputDisplay.text = String(self.fToC(numberOnScreen: self.numberOnScreen!))
            
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = String(self.numberOnScreen!)
            self.outputDisplay.text = String(self.cToF(numberOnScreen: self.numberOnScreen!))
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometeres", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = String(self.numberOnScreen!)
            self.outputDisplay.text = String(self.mToK(numberOnScreen: self.numberOnScreen!))
            
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = String(self.numberOnScreen!)
            self.outputDisplay.text = String(self.kToM(numberOnScreen: self.numberOnScreen!))
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    func fToC(numberOnScreen:Double) -> Double {
        var celcius:Double
        celcius = (numberOnScreen - 32.0) * 0.556
        /*
        if buttonPressed == true{
            celcius = (numberOnScreen - 32.0) * 0.556
        } else {
            celcius = (-numberOnScreen - 32.0) * 0.556
            
        }
 */
        
        return celcius
        
    }
    func cToF(numberOnScreen:Double) -> Double {
        var fahrenheit:Double
        fahrenheit = numberOnScreen * 1.8 + 32
        
    /*
        if buttonPressed == true{
            fahrenheit = numberOnScreen * 1.8 + 32
        } else {
             fahrenheit = -numberOnScreen * 1.8 + 32
            
        }
 */
        return fahrenheit
    }
    func mToK(numberOnScreen:Double) -> Double {
        var kilo:Double
        kilo = numberOnScreen * 1.609344
        /*
        if additionPressed == true{
            kilo = numberOnScreen * 1.609344
        } else {
            kilo = -numberOnScreen * 1.609344
            
        }
 */
        
        return kilo
    }
    func kToM(numberOnScreen:Double) -> Double {
        var miles:Double
        miles = numberOnScreen / 1.609344
        /*
        if buttonPressed == true{
            miles = numberOnScreen / 1.609344
        } else {
            miles = -numberOnScreen / 1.609344
        }
 */
         
        
        return miles
    }
}
