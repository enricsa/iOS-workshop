//
//  ViewController.swift
//  HelloWorld
//
//  Created by Enric Sánchez on 17/10/16.
//  Copyright © 2016 Enric Sánchez. All rights reserved.
//

import UIKit

let defaultValue = "Hello World!"

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lbHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbHello.text = defaultValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btPressed(_ sender: AnyObject) {
        if let name = tfName.text {
            lbHello.text = (name.characters.count > 0) ? "Hello \(name)!" : defaultValue
        }
    }
    
}

