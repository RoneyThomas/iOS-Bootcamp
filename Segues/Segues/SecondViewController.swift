//
//  SecondViewController.swift
//  Segues
//
//  Created by Roney Thomas Mannoocheril on 2019-06-30.
//  Copyright © 2019 Roney Thomas Mannoocheril. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var textPassedOver: String?
    @IBOutlet weak var textField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textField.text = textPassedOver
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
