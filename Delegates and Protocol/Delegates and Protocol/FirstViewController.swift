//
//  ViewController.swift
//  Delegates and Protocol
//
//  Created by Roney Thomas Mannoocheril on 2019-06-30.
//  Copyright © 2019 Roney Thomas Mannoocheril. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanRecieve {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForward", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            secondVC.delegate = self
        }
    }
    
    func dataRecieved(data: String) {
        print("this is working")
        textLabel.text = data
    }
}

