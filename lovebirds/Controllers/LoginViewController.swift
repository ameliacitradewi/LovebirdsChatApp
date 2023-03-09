//
//  LoginViewController.swift
//  lovebirds
//
//  Created by Amelia Citra on 03/03/23.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
       
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    //pop up alert if password less than 6 character
                    let alert = UIAlertController(title: "Oops!", message: e.localizedDescription, preferredStyle: .alert)
                    let alertAction = UIAlertAction(title: "OK", style: .default) { (sender: UIAlertAction) -> Void in
                    }
                    alert.addAction(alertAction)

                    // Showing alert
                    self.present(alert, animated: true) { () -> Void in
                    }
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
        
}
