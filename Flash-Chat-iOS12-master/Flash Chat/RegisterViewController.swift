//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        SVProgressHUD.show()
        //TODO: Set up a new user on our Firbase database
        guard let email = emailTextfield.text, !email.isEmpty else {
            return
        }
        guard let password = passwordTextfield.text, !password.isEmpty else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if error == nil {
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
            SVProgressHUD.dismiss()
        }
    }
    
    
}
