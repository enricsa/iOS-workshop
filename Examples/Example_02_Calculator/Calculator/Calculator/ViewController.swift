//
//  ViewController.swift
//  Calculator
//
//  Created by Enric Sánchez on 17/10/16.
//  Copyright © 2016 axa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfValueOne: UITextField!
    @IBOutlet weak var tfValueTwo: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btAddPressed(_ sender: AnyObject) {
        if let valueOne = intOn(tfValueOne), let valueTwo = intOn(tfValueTwo) {
            let result = calculator.add(a: valueOne, b: valueTwo)
            lbResult.text = "\(result)"
        } else {
            showAlert()
        }
    }
    
    @IBAction func btSubstractPressed(_ sender: AnyObject) {
        guard let valueOne = intOn(tfValueOne), let valueTwo = intOn(tfValueTwo) else {
            showAlert()
            return
        }
        
        let result = calculator.substract(a: valueOne, b: valueTwo)
        lbResult.text = "\(result)"
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Error",
                                      message: "Invalid values",
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)

    }
    
    func intOn(_ textfield: UITextField) -> Int? {
        if let stringValue = textfield.text, let value = Int(stringValue) {
            return value
        }
        return nil
    }
    
}

