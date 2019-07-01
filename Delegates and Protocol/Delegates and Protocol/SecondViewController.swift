//
//  SecondViewController.swift
//  Delegates and Protocol
//
//  Created by Roney Thomas Mannoocheril on 2019-07-01.
//  Copyright © 2019 Roney Thomas Mannoocheril. All rights reserved.
//

import UIKit

protocol CanRecieve {
    func dataRecieved(data: String)
}

class SecondViewController: UIViewController {

    var data = ""
    var delegate: CanRecieve?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        delegate?.dataRecieved(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
